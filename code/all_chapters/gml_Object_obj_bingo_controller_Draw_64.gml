/// IMPORT

temp_valign = draw_get_valign();
temp_halign = draw_get_halign();
temp_alpha = draw_get_alpha();
draw_set_alpha(1);
draw_set_font(fnt_main);
var grid_size = 5;
var square_size = 58;
var spacing = 2;
var base_x = 340;
var base_y = 1;
var new_lines = 0;

if (global.show_board && board_connected)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    if (!board_revealed)
    {
        var len = (grid_size * square_size) + ((grid_size - 1) * spacing);
        draw_set_color(c_navy);
        draw_rectangle(base_x, base_y, base_x + len, base_y + len, false);
        draw_set_color(c_white);
        draw_text_outline_ext(((2 * base_x) + len) / 2, ((2 * base_y) + len) / 2, "The board is hidden!\nPress " + scr_input_name(global.reveal_key) + " to reveal it.", 15, (len - base_x) + 15);
    }
    else
    {
        var idx = 0;
        var i = 0;
        var j = 0;
        var c = 0;
        var mousex = window_mouse_get_x();
        var mousey = window_mouse_get_y();
        
        for (i = 0; i < grid_size; i++)
        {
            for (j = 0; j < grid_size; j++)
            {
                var x1 = base_x + (j * (square_size + spacing));
                var y1 = base_y + (i * (square_size + spacing));
                var x2 = x1 + square_size;
                var y2 = y1 + square_size;
                var colors_array = string_split(global.goal_colors[idx], " ");
                var num_colors = array_length(colors_array);
                var section_width = square_size / num_colors;
                
                for (c = 0; c < num_colors; c++)
                {
                    draw_set_color(scr_color_from_name(colors_array[c]));
                    draw_rectangle(x1 + (c * section_width), y1, x1 + ((c + 1) * section_width), y2, false);
                }
                
                if (global.starring_goals && mousex >= x1 && mousex <= x2 && mousey >= y1 && mousey <= y2 && (device_mouse_check_button_pressed(0, mb_left) || device_mouse_check_button_pressed(0, mb_right)))
                {
                    global.starred_goals[idx] = !global.starred_goals[idx];
                    scr_save_bingo_data();
                }
                
                if (global.starred_goals[idx])
                    draw_sprite(spr_goal_star, 0, x1, y1);
                
                draw_set_color(c_white);
                var shown_str = global.goal_name[idx];
                
                if (string_count(" ", shown_str) < 2)
                {
                    new_lines = 0;

                    while (string_width_ext(shown_str, 13, (x2 - x1) + 20) >= ((x2 - x1) + 20))
                    {
                        new_lines++;
                        shown_str = string_insert("\n", shown_str, (20 - new_lines) * new_lines);
                        shown_str = string_replace_all(shown_str, " \n", "\n");
                        shown_str = string_replace_all(shown_str, "\n ", "\n");
                        
                        if (new_lines >= 3)
                            break;
                    }
                }
                
                draw_text_ext_transformed((x1 + x2) / 2, (y1 + y2) / 2, string_trim(shown_str), 13, (x2 - x1) + 15, 0.5, 0.5, 0);
                idx++;
            }
        }
        
        if (global.starring_goals)
            draw_sprite_ext(spr_maus_cursor, 0, mousex, mousey, 0.5, 0.5, 0, c_white, 1);
    }
}

if (global.room_seed != -1)
{
    draw_set_color(c_yellow);
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    var text_x = (base_x + ((square_size + spacing) * grid_size)) - 1;
    var text_y = ((base_y + ((square_size + spacing) * grid_size)) - (2 * spacing)) + 1;
    var text_y_offset = (instance_exists(obj_darkcontroller) && global.interact == 5) ? obj_darkcontroller.tp : 0;
    draw_text_outline(text_x, (global.show_board && board_connected) ? text_y : text_y_offset, "Seed: " + (board_revealed ? string(global.room_seed) : "Hidden") + " / " + global.room_lockout + "\n" + scr_input_name(global.board_key) + ": Toggle board\n" + scr_input_name(global.toggle_chat_key) + ": Toggle chat\n" + scr_input_name(global.chat_key) + ": Open chatbox", 0);
}

if (global.chat_typing)
{
    var width = surface_get_width(application_surface);
    var height = surface_get_height(application_surface);
    
    if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
        keyboard_string += clipboard_get_text();
    
    if (string_length(keyboard_string) > 100)
        keyboard_string = string_copy(keyboard_string, 1, 100);
    
    var shown_str = keyboard_string;
    new_lines = 0;
    
    while (string_width_ext(shown_str, 15, width) >= width)
    {
        new_lines++;
        shown_str = string_insert("\n", shown_str, 50 * new_lines);
    }

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_ltgray);
    draw_text_outline(1, height - 48, "Typing in chat. Press ESC to cancel. Commands: /color, /star.", 0);
    draw_set_color(c_dkgray);
    draw_rectangle(0, height - 30, width, height, false);
    draw_set_color(c_white);
    draw_text_outline_ext(1, height - 32, shown_str, 15, width);
    
    if (keyboard_check_pressed(vk_enter))
    {
        var str = scr_escape_string(keyboard_string);
        
        if (string_length(str) > 0)
        {
            var str_lower = string_lower(str);
            
            if (string_pos("/color", str_lower) == 1 || string_pos("/colour", str_lower) == 1)
            {
                var split_string = string_split(str_lower, " ");
                var chosen_color = "blank";
                
                if (array_length(split_string) > 1)
                    chosen_color = split_string[1];
                
                if (chosen_color == "blank" || scr_color_from_name(chosen_color) == 16777215)
                {
                    scr_chat_message(c_red, "Invalid color. Use orange, red, blue, green, purple, navy, teal, brown, pink or yellow.");
                }
                else
                {
                    global.color = chosen_color;
                    scr_save_bingo_data();
                    http_post_string("https://bingosync.com/api/color", "{ \"room\": \"" + scr_escape_string(global.room_id) + "\", \"color\": \"" + global.color + "\" }");
                }
            }
            else if (string_pos("/star", str_lower) == 1)
            {
                if (!global.show_board || !board_connected || !board_revealed)
                {
                    scr_chat_message(c_red, "You can't star goals while the board is hidden.");
                }
                else
                {
                    global.starring_goals = true;
                    window_mouse_set(width / 2, height / 2);
                    scr_chat_message(c_yellow, "Click on goals to star them. Press ESC to cancel.");
                }
            }
            else
            {
                http_post_string("https://bingosync.com/api/chat", "{ \"room\": \"" + scr_escape_string(global.room_id) + "\", \"text\": \"" + str + "\" }");
            }
        }
        
        global.chat_typing = false;
        keyboard_clear(vk_enter);
        keyboard_string = "";
    }
}

draw_set_halign(temp_halign);
draw_set_valign(temp_valign);
draw_set_alpha(temp_alpha);
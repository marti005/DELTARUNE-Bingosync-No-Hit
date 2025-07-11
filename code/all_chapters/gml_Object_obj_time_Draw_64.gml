/// PATCH

/// APPEND
if (global.show_chat)
{
    temp_valign = draw_get_valign();
    temp_halign = draw_get_halign();
    temp_alpha = draw_get_alpha();
    draw_set_alpha(1);
    draw_set_font(fnt_main);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
    var ypos = 0;
    var new_lines = 0;
    var i = 0;
    
    for (i = 0; i < array_length(global.chat_line); i++)
    {
        new_lines = 0;
        
        while (string_width_ext(string_trim(global.chat_line[i]), 15, 330) >= 330)
        {
            new_lines++;
            global.chat_line[i] = string_insert("\n", global.chat_line[i], (50 - new_lines) * new_lines);
            
            if (new_lines >= 5)
                break;
        }
        
        var message_height = string_height_ext(global.chat_line[i], 15, 330);
        draw_set_color(global.chat_color[i]);
        draw_text_outline_ext(2, ypos, global.chat_line[i], 15, 330);
        ypos += message_height;
    }

    draw_set_halign(temp_halign);
    draw_set_valign(temp_valign);
    draw_set_alpha(temp_alpha);
}
/// END
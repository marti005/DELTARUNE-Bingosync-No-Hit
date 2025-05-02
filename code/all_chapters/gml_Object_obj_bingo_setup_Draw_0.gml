/// IMPORT

draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_yellow);
draw_text(0, 0, "Bingosync Mod " + scr_get_mod_version() + " by Chistosito & NERS (Chapter " + string(global.chapter) + ")");
var base_x = 320;
var base_y = 100;
var spacing = 20;
var text_connect = "Connect to room";
var text_room_id = "Room ID: " + ((global.room_id != "" || sel == 1) ? global.room_id : "[Empty. Select to be able to type]");
var text_password = "Password: " + ((global.password != "" || sel == 2) ? censor_password() : "[Empty. Select to be able to type]");
var text_nickname = "Nickname: " + ((global.nickname != "" || sel == 3) ? global.nickname : "[Empty. Select to be able to type]");
var text_color = "Color: " + ((global.color != "" || sel == 4) ? global.color : "[Empty. Select to be able to type]");
var text_reset = (sel == 5) ? "Reset progress? Select again to confirm!" : "Reset progress";
var text_board = (sel == 6) ? "Board toggle keybind: Listening..." : ("Board toggle keybind: " + scr_input_name(global.board_key));
var text_chat = (sel == 7) ? "Chat keybind: Listening..." : ("Chat keybind: " + scr_input_name(global.chat_key));
var text_reveal = (sel == 8) ? "Board reveal keybind: Listening..." : ("Board reveal keybind: " + scr_input_name(global.reveal_key));
var text_toggle_chat = (sel == 9) ? "Chat toggle keybind: Listening..." : ("Chat toggle keybind: " + scr_input_name(global.toggle_chat_key));
var selected_text;

switch (pos)
{
    case 0:
        selected_text = text_connect;
        break;
    
    case 1:
        selected_text = text_room_id;
        break;
    
    case 2:
        selected_text = text_password;
        break;
    
    case 3:
        selected_text = text_nickname;
        break;
    
    case 4:
        selected_text = text_color;
        break;
    
    case 5:
        selected_text = text_reset;
        break;
    
    case 6:
        selected_text = text_board;
        break;
    
    case 7:
        selected_text = text_chat;
        break;
    
    case 8:
        selected_text = text_reveal;
        break;
    
    case 9:
        selected_text = text_toggle_chat;
        break;
}

var text_width = string_width(selected_text);
draw_sprite(spr_heart, 0, base_x - (text_width / 2) - 20, (base_y - (spacing / 3)) + (pos * spacing));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color((pos == 0) ? c_yellow : c_white);
draw_text(base_x, base_y, text_connect);
draw_set_color((pos == 1) ? c_yellow : c_white);
draw_text(base_x, base_y + spacing, text_room_id);
draw_set_color((pos == 2) ? c_yellow : c_white);
draw_text(base_x, base_y + (2 * spacing), text_password);
draw_set_color((pos == 3) ? c_yellow : c_white);
draw_text(base_x, base_y + (3 * spacing), text_nickname);
draw_set_color((pos == 4) ? c_yellow : c_white);
draw_text(base_x, base_y + (4 * spacing), text_color);
draw_set_color((pos == 5) ? c_yellow : c_white);
draw_text(base_x, base_y + (5 * spacing), text_reset);
draw_set_color((pos == 6) ? c_yellow : c_white);
draw_text(base_x, base_y + (6 * spacing), text_board);
draw_set_color((pos == 7) ? c_yellow : c_white);
draw_text(base_x, base_y + (7 * spacing), text_chat);
draw_set_color((pos == 8) ? c_yellow : c_white);
draw_text(base_x, base_y + (8 * spacing), text_reveal);
draw_set_color((pos == 9) ? c_yellow : c_white);
draw_text(base_x, base_y + (9 * spacing), text_toggle_chat);
draw_set_color(status_color);
draw_text_ext(320, base_y + ((max_pos + 2) * spacing), status_text, 15, 350);
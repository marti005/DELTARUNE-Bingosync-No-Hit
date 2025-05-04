/// IMPORT

function scr_get_mod_version()
{
    return "1.01";
}

// This function already exists in Chapter 2+ but we have to add it for Chapter 1
#if CHAPTER_1
function draw_text_outline(arg0, arg1, arg2, arg3)
{
    var resetcolor = draw_get_color();
    draw_set_color(arg3);
    draw_text(arg0 - 1, arg1, arg2);
    draw_text(arg0 - 1, arg1 - 1, arg2);
    draw_text(arg0 - 1, arg1 + 1, arg2);
    draw_text(arg0 + 1, arg1, arg2);
    draw_text(arg0 + 1, arg1 + 1, arg2);
    draw_text(arg0 + 1, arg1 - 1, arg2);
    draw_text(arg0, arg1 + 1, arg2);
    draw_text(arg0, arg1 - 1, arg2);
    draw_set_color(resetcolor);
    draw_text(arg0, arg1, arg2);
}
#endif

function draw_text_outline_ext(arg0, arg1, arg2, arg3, arg4, arg5 = 0)
{
    var resetcolor = draw_get_color();
    draw_set_color(arg5);
    draw_text_ext(arg0 - 1, arg1, arg2, arg3, arg4);
    draw_text_ext(arg0 - 1, arg1 - 1, arg2, arg3, arg4);
    draw_text_ext(arg0 - 1, arg1 + 1, arg2, arg3, arg4);
    draw_text_ext(arg0 + 1, arg1, arg2, arg3, arg4);
    draw_text_ext(arg0 + 1, arg1 + 1, arg2, arg3, arg4);
    draw_text_ext(arg0 + 1, arg1 - 1, arg2, arg3, arg4);
    draw_text_ext(arg0, arg1 + 1, arg2, arg3, arg4);
    draw_text_ext(arg0, arg1 - 1, arg2, arg3, arg4);
    draw_set_color(resetcolor);
    draw_text_ext(arg0, arg1, arg2, arg3, arg4);
}

function draw_text_outline_ext_transformed(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8 = 0)
{
    var resetcolor = draw_get_color();
    draw_set_color(arg8);
    draw_text_ext_transformed(arg0 - 1, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0 - 1, arg1 - 1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0 - 1, arg1 + 1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0 + 1, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0 + 1, arg1 + 1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0 + 1, arg1 - 1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0, arg1 + 1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_text_ext_transformed(arg0, arg1 - 1, arg2, arg3, arg4, arg5, arg6, arg7);
    draw_set_color(resetcolor);
    draw_text_ext_transformed(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}

function scr_input_name(arg0)
{
    switch (arg0)
    {
        case 8:
            return "BACKSPACE";
        
        case 9:
            return "TAB";
        
        case 12:
            return "NUM 5 (NUMLOCK OFF)";
        
        case 13:
            return "ENTER";
        
        case 16:
            return "SHIFT";
        
        case 17:
            return "CONTROL";
        
        case 18:
            return "ALT";
        
        case 19:
            return "PAUSE";
        
        case 20:
            return "CAPS LOCK";
        
        case 27:
            return "ESCAPE";
        
        case 32:
            return "SPACE";
        
        case 33:
            return "PAGE UP";
        
        case 34:
            return "PAGE DOWN";
        
        case 35:
            return "END";
        
        case 36:
            return "HOME";
        
        case 37:
            return "LEFT";
        
        case 38:
            return "UP";
        
        case 39:
            return "RIGHT";
        
        case 40:
            return "DOWN";
        
        case 44:
            return "PRINT SCREEN";
        
        case 45:
            return "INSERT";
        
        case 46:
            return "DELETE";
        
        case 91:
            return "WINDOWS KEY";
        
        case 92:
            return "RIGHT WINDOWS KEY";
        
        case 93:
            return "CONTEXT MENU";
        
        case 96:
            return "NUM 0";
        
        case 97:
            return "NUM 1";
        
        case 98:
            return "NUM 2";
        
        case 99:
            return "NUM 3";
        
        case 100:
            return "NUM 4";
        
        case 101:
            return "NUM 5 (NUMLOCK ON)";
        
        case 102:
            return "NUM 6";
        
        case 103:
            return "NUM 7";
        
        case 104:
            return "NUM 8";
        
        case 105:
            return "NUM 9";
        
        case 106:
            return "NUM *";
        
        case 107:
            return "NUM +";
        
        case 109:
            return "NUM -";
        
        case 110:
            return "NUM .";
        
        case 111:
            return "NUM /";
        
        case 112:
            return "F1";
        
        case 113:
            return "F2";
        
        case 114:
            return "F3";
        
        case 115:
            return "F4";
        
        case 116:
            return "F5";
        
        case 117:
            return "F6";
        
        case 118:
            return "F7";
        
        case 119:
            return "F8";
        
        case 120:
            return "F9";
        
        case 121:
            return "F10";
        
        case 122:
            return "F11";
        
        case 123:
            return "F12";
        
        case 144:
            return "NUM LOCK";
        
        case 145:
            return "SCROLL LOCK";
        
        case 160:
            return "LEFT SHIFT";
        
        case 161:
            return "RIGHT SHIFT";
        
        case 162:
            return "LEFT CONTROL";
        
        case 163:
            return "RIGHT CONTROL";
        
        case 164:
            return "LEFT ALT";
        
        case 165:
            return "RIGHT ALT";
        
        case 186:
            return ";";
        
        case 187:
            return "=";
        
        case 188:
            return ",";
        
        case 189:
            return "-";
        
        case 190:
            return ".";
        
        case 191:
            return "/";
        
        case 192:
            return "TILDE";
        
        case 219:
            return "[";
        
        case 220:
            return "\\";
        
        case 221:
            return "]";
        
        case 222:
            return "APOSTROPHE";
        
        default:
            return chr(arg0);
    }
}

function scr_escape_string(arg0)
{
    arg0 = string_trim(arg0);
    var escaped = "";
    
    for (var i = 1; i <= string_length(arg0); i++)
    {
        var char = string_char_at(arg0, i);
        
        switch (char)
        {
            case "\"":
                escaped += "\\\"";
                break;
            
            case "\\":
                escaped += "\\\\";
                break;
            
            default:
                escaped += char;
                break;
        }
    }
    
    return escaped;
}

function scr_color_from_name(arg0)
{
    switch (arg0)
    {
        case "blank":
            return c_gray;
        
        case "green":
            return 0x62C462;
        
        case "red":
            return 0x5B5FEE;
        
        case "orange":
            return 0x0694F8;
        
        case "blue":
            return 0xDEC05B;
        
        case "purple":
            return 0xBF2D82;
        
        case "navy":
            return 0xB5480D;
        
        case "teal":
            return 0x959641;
        
        case "pink":
            return 0x9C79DE;
        
        case "brown":
            return 0x235CAB;
        
        case "yellow":
            return 0x0BBAC1;
        
        default:
            return c_white;
    }
}

function scr_chat_message(arg0, arg1)
{
    var len = array_length(global.chat_line) - 1;
    
    if (global.chat_line[len] == "")
    {
        for (var i = 0; i <= len; i++)
        {
            if (global.chat_line[i] == "")
            {
                global.chat_color[i] = arg0;
                global.chat_line[i] = arg1;
                exit;
            }
        }
    }
    
    for (var i = 0; i < len; i++)
    {
        global.chat_color[i] = global.chat_color[i + 1];
        global.chat_line[i] = global.chat_line[i + 1];
    }
    
    global.chat_color[len] = arg0;
    global.chat_line[len] = arg1;
}

function scr_load_bingo_data()
{
    global.num_goals = 85;
    global.room_id = "";
    global.password = "";
    global.nickname = "";
    global.color = "";
    global.last_card_timestamp = 0;
    global.show_chat = true;
    global.show_board = true;
    global.goal_progress = array_create(global.num_goals, 0);
    global.board_key = 66;
    global.chat_key = 84;
    global.reveal_key = 82;
    global.toggle_chat_key = 89;
    global.money_files = array_create(6, 0);
    global.shop_items = array_create(2, 0);
    global.bananas = array_create(2, 0);
    global.eggs = array_create(2, 0);
    global.fix_us = array_create(2, 0);
    global.smorg = array_create(2, 0);
    global.berdly_encounters = array_create(2, 0);
    global.revivemints = array_create(4, 0);
    global.dojo_challenges = array_create(5, 0);
    global.wrong_warps = array_create(7, "");
    global.recruits = array_create(10, 0);
    
    if (file_exists("bingo_data.json"))
    {
        var file = file_text_open_read("bingo_data.json");
        var json = json_parse(file_text_read_string(file));
        file_text_close(file);
        global.room_id = json.last_saved_room.room_id;
        global.password = json.last_saved_room.password;
        global.nickname = json.last_saved_room.nickname;
        global.color = json.last_saved_room.color;
        global.last_card_timestamp = json.last_saved_room.last_card_timestamp;
        global.show_chat = json.preferences.show_chat;
        global.show_board = json.preferences.show_board;
        global.board_key = json.keybinds.board;
        global.chat_key = json.keybinds.chat;
        global.reveal_key = json.keybinds.reveal;
        global.toggle_chat_key = json.keybinds.toggle_chat;
        var list = ds_list_create();
        ds_list_read(list, json.progress.general);
        
        for (var i = 0; i < global.num_goals; i++)
            global.goal_progress[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.money_files);
        
        for (var i = 0; i < array_length(global.money_files); i++)
            global.money_files[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.shop_items);
        
        for (var i = 0; i < array_length(global.shop_items); i++)
            global.shop_items[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.bananas);
        
        for (var i = 0; i < array_length(global.bananas); i++)
            global.bananas[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.eggs);
        
        for (var i = 0; i < array_length(global.eggs); i++)
            global.eggs[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.fix_us);
        
        for (var i = 0; i < array_length(global.fix_us); i++)
            global.fix_us[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.smorg);
        
        for (var i = 0; i < array_length(global.smorg); i++)
            global.smorg[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.berdly_encounters);
        
        for (var i = 0; i < array_length(global.berdly_encounters); i++)
            global.berdly_encounters[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.revivemints);
        
        for (var i = 0; i < array_length(global.revivemints); i++)
            global.revivemints[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.dojo_challenges);
        
        for (var i = 0; i < array_length(global.dojo_challenges); i++)
            global.dojo_challenges[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.wrong_warps);
        
        for (var i = 0; i < array_length(global.wrong_warps); i++)
            global.wrong_warps[i] = ds_list_find_value(list, i);
        
        ds_list_clear(list);
        ds_list_read(list, json.progress.specific.recruits);
        
        for (var i = 0; i < array_length(global.recruits); i++)
            global.recruits[i] = ds_list_find_value(list, i);
        
        ds_list_destroy(list);
    }
}

function scr_save_bingo_data()
{
    var data = {};
    data.last_saved_room = {};
    data.preferences = {};
    data.keybinds = {};
    data.progress = {};
    data.progress.specific = {};
    data.last_saved_room.room_id = global.room_id;
    data.last_saved_room.password = global.password;
    data.last_saved_room.nickname = global.nickname;
    data.last_saved_room.color = global.color;
    data.last_saved_room.last_card_timestamp = global.last_card_timestamp;
    data.preferences.show_chat = global.show_chat;
    data.preferences.show_board = global.show_board;
    data.keybinds.board = global.board_key;
    data.keybinds.chat = global.chat_key;
    data.keybinds.reveal = global.reveal_key;
    data.keybinds.toggle_chat = global.toggle_chat_key;
    var list = ds_list_create();
    
    for (var i = 0; i < global.num_goals; i++)
        ds_list_add(list, global.goal_progress[i]);
    
    data.progress.general = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.money_files); i++)
        ds_list_add(list, global.money_files[i]);
    
    data.progress.specific.money_files = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.shop_items); i++)
        ds_list_add(list, global.shop_items[i]);
    
    data.progress.specific.shop_items = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.bananas); i++)
        ds_list_add(list, global.bananas[i]);
    
    data.progress.specific.bananas = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.eggs); i++)
        ds_list_add(list, global.eggs[i]);
    
    data.progress.specific.eggs = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.fix_us); i++)
        ds_list_add(list, global.fix_us[i]);
    
    data.progress.specific.fix_us = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.smorg); i++)
        ds_list_add(list, global.smorg[i]);
    
    data.progress.specific.smorg = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.berdly_encounters); i++)
        ds_list_add(list, global.berdly_encounters[i]);
    
    data.progress.specific.berdly_encounters = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.revivemints); i++)
        ds_list_add(list, global.revivemints[i]);
    
    data.progress.specific.revivemints = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.dojo_challenges); i++)
        ds_list_add(list, global.dojo_challenges[i]);
    
    data.progress.specific.dojo_challenges = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.wrong_warps); i++)
        ds_list_add(list, global.wrong_warps[i]);
    
    data.progress.specific.wrong_warps = ds_list_write(list);
    ds_list_clear(list);
    
    for (var i = 0; i < array_length(global.recruits); i++)
        ds_list_add(list, global.recruits[i]);
    
    data.progress.specific.recruits = ds_list_write(list);
    ds_list_destroy(list);
    var file = file_text_open_write("bingo_data.json");
    file_text_write_string(file, json_stringify(data));
    file_text_close(file);
}

function scr_reset_bingo_data()
{
    global.goal_progress = array_create(global.num_goals, 0);
    global.money_files = array_create(6, 0);
    global.shop_items = array_create(2, 0);
    global.bananas = array_create(2, 0);
    global.eggs = array_create(2, 0);
    global.fix_us = array_create(2, 0);
    global.smorg = array_create(2, 0);
    global.berdly_encounters = array_create(2, 0);
    global.revivemints = array_create(4, 0);
    global.dojo_challenges = array_create(5, 0);
    global.wrong_warps = array_create(7, "");
    global.recruits = array_create(10, 0);
    scr_save_bingo_data();
}

function scr_goal_slot_from_name(arg0)
{
    for (var i = 0; i < array_length(global.goal_slot); i++)
    {
        if (string_lower(global.goal_name[i]) == string_lower(arg0))
            return string_digits(global.goal_slot[i]);
    }
    
    return 0;
}

function scr_goal_requirements(arg0)
{
    switch (arg0)
    {
        case 0:
            return global.goal_progress[arg0] >= 1;
        
        case 1:
            return global.goal_progress[arg0] >= 1;
        
        case 2:
            return global.goal_progress[arg0] >= 10;
        
        case 3:
            return global.goal_progress[arg0] >= 5;
        
        case 4:
            return global.goal_progress[arg0] >= 1;
        
        case 5:
            return global.goal_progress[arg0] >= 1;
        
        case 6:
            return global.goal_progress[arg0] >= 1;
        
        case 7:
            return global.goal_progress[arg0] >= 1;
        
        case 8:
            return global.goal_progress[arg0] >= 1;
        
        case 9:
            return global.goal_progress[arg0] >= 1;
        
        case 10:
            return global.goal_progress[arg0] >= 25;
        
        case 11:
            return global.goal_progress[arg0] >= 1;
        
        case 12:
            return global.goal_progress[arg0] >= 1;
        
        case 13:
            return global.goal_progress[arg0] >= 1;
        
        case 14:
            return global.goal_progress[arg0] >= 1;
        
        case 15:
            return global.goal_progress[arg0] >= 1;
        
        case 16:
            return global.goal_progress[arg0] >= 10;
        
        case 17:
            return global.goal_progress[arg0] >= 1;
        
        case 18:
            return global.goal_progress[arg0] >= 1;
        
        case 19:
            return global.goal_progress[arg0] >= 1;
        
        case 20:
            return global.goal_progress[arg0] >= 1;
        
        case 21:
            return global.goal_progress[arg0] >= 1;
        
        case 22:
            return global.goal_progress[arg0] >= 1;
        
        case 23:
            return global.goal_progress[arg0] >= 1;
        
        case 24:
            return global.goal_progress[arg0] >= 1;
        
        case 25:
            return global.goal_progress[arg0] >= 1;
        
        case 26:
            return global.goal_progress[arg0] >= 1;
        
        case 27:
            return global.goal_progress[arg0] >= 1;
        
        case 28:
            return global.goal_progress[arg0] >= 1;
        
        case 29:
            return global.goal_progress[arg0] >= 1;
        
        case 30:
            return global.goal_progress[arg0] >= 15;
        
        case 31:
            return global.goal_progress[arg0] >= 20;
        
        case 32:
            return global.goal_progress[arg0] >= 1;
        
        case 33:
            return global.goal_progress[arg0] >= 1;
        
        case 34:
            return global.goal_progress[arg0] >= 1;
        
        case 35:
            return global.goal_progress[arg0] >= 1;
        
        case 36:
            return global.goal_progress[arg0] >= 1;
        
        case 37:
            return global.goal_progress[arg0] >= 1;
        
        case 38:
            return global.goal_progress[arg0] >= 1;
        
        case 39:
            return global.goal_progress[arg0] >= 1;
        
        case 40:
            return global.goal_progress[arg0] >= 1;
        
        case 41:
            return global.goal_progress[arg0] >= 1;
        
        case 42:
            return global.goal_progress[arg0] >= 3;
        
        case 43:
            return global.goal_progress[arg0] >= 1;
        
        case 44:
            return global.goal_progress[arg0] >= 1;
        
        case 45:
            return global.goal_progress[arg0] >= 1;
        
        case 46:
            return global.goal_progress[arg0] >= 1;
        
        case 47:
            return global.goal_progress[arg0] >= 1;
        
        case 48:
            return global.goal_progress[arg0] >= 1;
        
        case 49:
            return global.goal_progress[arg0] >= 1;
        
        case 50:
            return global.goal_progress[arg0] >= 1;
        
        case 51:
            return global.goal_progress[arg0] >= 1;
        
        case 52:
            return global.goal_progress[arg0] >= 1;
        
        case 53:
            return global.goal_progress[arg0] >= 1;
        
        case 54:
            return global.goal_progress[arg0] >= 1;
        
        case 55:
            return global.goal_progress[arg0] >= 1;
        
        case 56:
            return global.goal_progress[arg0] >= 1;
        
        case 57:
            return global.goal_progress[arg0] >= 1;
        
        case 58:
            return global.goal_progress[arg0] >= 1;
        
        case 59:
            return global.goal_progress[arg0] >= 1;
        
        case 60:
            return global.goal_progress[arg0] >= 1;
        
        case 61:
            return global.goal_progress[arg0] >= 1;
        
        case 62:
            return global.goal_progress[arg0] >= 1;
        
        case 63:
            return global.goal_progress[arg0] >= 1;
        
        case 64:
            return global.goal_progress[arg0] >= 1;
        
        case 65:
            return global.goal_progress[arg0] >= 1;
        
        case 66:
            return global.goal_progress[arg0] >= 1;
        
        case 67:
            return global.goal_progress[arg0] >= 1;
        
        case 68:
            return global.goal_progress[arg0] >= 1;
        
        case 69:
            return global.goal_progress[arg0] >= 1;
        
        case 70:
            return global.goal_progress[arg0] >= 1;
        
        case 71:
            return global.goal_progress[arg0] >= 1;
        
        case 72:
            return global.goal_progress[arg0] >= 5;
        
        case 73:
            return global.goal_progress[arg0] >= 1;
        
        case 74:
            return global.goal_progress[arg0] >= 1;
        
        case 75:
            return global.goal_progress[arg0] >= 1;
        
        case 76:
            return global.goal_progress[arg0] >= 1;
        
        case 77:
            return global.goal_progress[arg0] >= 1;
        
        case 78:
            return global.goal_progress[arg0] >= 2;
        
        case 79:
            return global.goal_progress[arg0] >= 1;
        
        case 80:
            return global.goal_progress[arg0] >= 10;
        
        case 81:
            return global.goal_progress[arg0] >= 1;
        
        case 82:
            return global.goal_progress[arg0] >= 1;
        
        case 83:
            return global.goal_progress[arg0] >= 1;
        
        case 84:
            return global.goal_progress[arg0] >= 1;
        
        default:
            return 0;
    }
}

function scr_internal_name_from_slot(arg0)
{
    switch (arg0)
    {
        case 0:
            return "$2000";
        
        case 1:
            return "get an egg (original source)";
        
        case 2:
            return "spare/pacify 10 enemies";
        
        case 3:
            return "kill 5 enemies";
        
        case 4:
            return "bed inspector";
        
        case 5:
            return "complete jevil";
        
        case 6:
            return "get the freeze ring";
        
        case 7:
            return "die";
        
        case 8:
            return "buy an item from seam and rouxls";
        
        case 9:
            return "complete the hacker side quest";
        
        case 10:
            return "spare/pacify 25 enemies";
        
        case 11:
            return "buy the royal pin (ch2 mansion shop)";
        
        case 12:
            return "defeat king";
        
        case 13:
            return "finish chapter 1";
        
        case 14:
            return "defeat giga queen";
        
        case 15:
            return "defeat queen";
        
        case 16:
            return "kill 10 enemies";
        
        case 17:
            return "complete the giasfelfebrehber puzzle";
        
        case 18:
            return "collect 2 bananas";
        
        case 19:
            return "get the spin cake";
        
        case 20:
            return "fuse an item";
        
        case 21:
            return "get 2 eggs (one from each chapter)";
        
        case 22:
            return "$3000";
        
        case 23:
            return "use susie's ultimate heal";
        
        case 24:
            return "do 'fix us' in both chapters";
        
        case 25:
            return "talk to starwalker";
        
        case 26:
            return "get the dice brace";
        
        case 27:
            return "complete ch1 and ch2 smorgasbords";
        
        case 28:
            return "enter the dark world without using the bed";
        
        case 29:
            return "get the thorn ring (original source)";
        
        case 30:
            return "spare/pacify 15 enemies";
        
        case 31:
            return "kill 20 enemies";
        
        case 32:
            return "complete 3 challenges in party dojo (ch2 castle town)";
        
        case 33:
            return "complete spamton neo (basement)";
        
        case 34:
            return "complete both berdly encounters";
        
        case 35:
            return "buy something from spamton's shop";
        
        case 36:
            return "get 2 revive mints";
        
        case 37:
            return "eat moss in ch2";
        
        case 38:
            return "complete the sweet cap'n cakes battle";
        
        case 39:
            return "max out your inventory";
        
        case 40:
            return "open the balloon chest (city heights)";
        
        case 41:
            return "abort snowgrave after getting the freeze ring";
        
        case 42:
            return "hit 3 pipis";
        
        case 43:
            return "complete spamton neo (snowgrave)";
        
        case 44:
            return "complete the spamton encounter (normal)";
        
        case 45:
            return "complete the spelling bee cutscene (mansion)";
        
        case 46:
            return "get captured in chapter 2";
        
        case 47:
            return "get a lancer cookie";
        
        case 48:
            return "build the flb duck (pink)";
        
        case 49:
            return "see obj_weirdroute_manipulator";
        
        case 50:
            return "recruit mauswheel";
        
        case 51:
            return "lose tasque manager";
        
        case 52:
            return "recruit werewerewire";
        
        case 53:
            return "lose werewerewire";
        
        case 54:
            return "watch the lesbian cutscene";
        
        case 55:
            return "beat the rouxls fight";
        
        case 56:
            return "get revivedust";
        
        case 57:
            return "talk to the green swatchling";
        
        case 58:
            return "crash with noelle anticheat";
        
        case 59:
            return "trigger milk on the 2nd k.round fight";
        
        case 60:
            return "spare clover without using the manual (ch1)";
        
        case 61:
            return "lose mauswheel";
        
        case 62:
            return "watch the legend";
        
        case 63:
            return "complete the dummy tutorial";
        
        case 64:
            return "hug ralsei";
        
        case 65:
            return "talk to lancer in the epilogue";
        
        case 66:
            return "spare ponman";
        
        case 67:
            return "beat triple rabbick";
        
        case 68:
            return "build the cutest machine";
        
        case 69:
            return "get a glowshard";
        
        case 70:
            return "ww into 7 unique rooms";
        
        case 71:
            return "recruit 2 different enemies";
        
        case 72:
            return "heal in battles 5 times";
        
        case 73:
            return "hit a baby car";
        
        case 74:
            return "full berdly spare";
        
        case 75:
            return "equip white ribbon";
        
        case 76:
            return "pot balance";
        
        case 77:
            return "donate d$1";
        
        case 78:
            return "get both chests on 2 maus 1 maus";
        
        case 79:
            return "use dual heal";
        
        case 80:
            return "pacify 10 enemies";
        
        case 81:
            return "get ms.pipis";
        
        case 82:
            return "speak to sans";
        
        case 83:
            return "place the egg in hometown";
        
        case 84:
            return "visit rudy";
        
        default:
            return "none";
    }
}

function scr_add_goal_progress(arg0, arg1)
{
    if (global.ws_client == -1)
        exit;
    
    global.goal_progress[arg0] += arg1;
    
    if (scr_goal_requirements(arg0))
    {
        var board_slot = scr_goal_slot_from_name(scr_internal_name_from_slot(arg0));
        
        if (board_slot > 0 && string_pos(global.color, global.goal_colors[board_slot - 1]) == 0)
        {
            // Prevent goals from triggering multiple times in quick succession (the colors will be updated properly when the board request comes through anyway)
            if (global.goal_colors[board_slot - 1] == "blank")
                global.goal_colors[board_slot - 1] = global.color;
            else
                global.goal_colors[board_slot - 1] += " " + global.color;
            
            http_post_string("https://bingosync.com/api/select", "{ \"room\": \"" + scr_escape_string(global.room_id) + "\", \"color\": \"" + global.color + "\", \"slot\": \"" + board_slot + "\", \"remove_color\": false }");
        }
    }
    
    scr_save_bingo_data();
}
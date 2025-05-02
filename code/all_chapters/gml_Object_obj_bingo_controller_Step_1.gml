/// IMPORT

if (!board_connected)
    exit;

if (!global.chat_typing)
{
    if (keyboard_check_pressed(global.board_key))
    {
        global.show_board = !global.show_board;
        scr_save_bingo_data();
    }
    else if (keyboard_check_pressed(global.toggle_chat_key))
    {
        global.show_chat = !global.show_chat;
        scr_save_bingo_data();
    }
    else if (keyboard_check_pressed(global.chat_key))
    {
        if (keyboard_check(vk_control) || keyboard_check(vk_shift))
        {
            scr_chat_message(c_red, "You can't open the chat with CONTROL or SHIFT held.");
        }
        else
        {
            for (var i = 0; i < 10; i += 1)
            {
                if (global.input_held[i] || global.input_pressed[i])
                    global.input_released[i] = 1;
                
                global.input_held[i] = 0;
                global.input_pressed[i] = 0;
            }
            
            global.chat_typing = true;
            keyboard_string = "";
        }
    }
    else if (keyboard_check_pressed(global.reveal_key))
    {
        if (board_revealed)
        {
            scr_chat_message(c_red, "The card is already revealed.");
        }
        else
        {
            board_revealed = true;
            http_post_string("https://bingosync.com/api/revealed", "{ \"room\": \"" + scr_escape_string(global.room_id) + "\" }");
        }
    }
}
else if (keyboard_check_pressed(vk_escape))
{
    global.chat_typing = false;
    keyboard_string = "";
    keyboard_clear(vk_escape);
}
/// IMPORT

if (sel == -1)
{
    if (up_p())
    {
        pos--;

        if (pos < 0)
            pos = max_pos;

        snd_play(snd_menumove);
    }
    else if (down_p())
    {
        pos++;

        if (pos > max_pos)
            pos = 0;

        snd_play(snd_menumove);
    }
    else if (button1_p())
    {
        switch (pos)
        {
            case 0:
                if (!internet)
                {
                    status_color = c_red;
                    status_text = "Can't connect without internet!";
                    snd_play(snd_hurt1);
                }
                else if (string_trim(global.room_id) == "")
                {
                    status_color = c_red;
                    status_text = "Empty room ID!";
                    snd_play(snd_hurt1);
                }
                else if (string_trim(global.password) == "")
                {
                    status_color = c_red;
                    status_text = "Empty password!";
                    snd_play(snd_hurt1);
                }
                else if (string_trim(global.nickname) == "")
                {
                    status_color = c_red;
                    status_text = "Empty nickname!";
                    snd_play(snd_hurt1);
                }
                else if (string_length(global.nickname) > 50)
                {
                    status_color = c_red;
                    status_text = "Nickname is too long\n(maximum 50 characters allowed)!";
                    snd_play(snd_hurt1);
                }
                else if (string_lower(string_trim(global.color)) == "blank" || scr_color_from_name(string_lower(string_trim(global.color))) == 16777215)
                {
                    status_color = c_red;
                    status_text = "Invalid color! Use orange, red, blue, green, purple, navy, teal, brown, pink or yellow.";
                    snd_play(snd_hurt1);
                }
                else
                {
                    if (global.nickname != string_trim(global.nickname))
                        global.nickname = string_trim(global.nickname);

                    if (global.color != string_lower(string_trim(global.color)))
                        global.color = string_lower(string_trim(global.color));

                    scr_save_bingo_data();
                    httppost = http_post_string("https://bingosync.com/api/join-room", "{ \"room\": \"" + scr_escape_string(global.room_id) + "\", \"nickname\": \"" + scr_escape_string(global.nickname) + "\", \"password\": \"" + scr_escape_string(global.password) + "\" }");
                    status_color = c_yellow;
                    status_text = "Please wait...";
                    sel = 0;
                    snd_play(snd_select);
                }

                break;

            case 1:
                sel = 1;
                snd_play(snd_select);

                if (global.is_console)
                {
                    mystring = "";
                    console_string = get_string_async("Input the room ID.", global.room_id);
                }
                else
                {
                    keyboard_string = global.room_id;
                    status_color = c_ltgray;
                    status_text = "Press ESC or Enter to stop typing.";
                }

                break;

            case 2:
                sel = 2;
                snd_play(snd_select);

                if (global.is_console)
                {
                    mystring = "";
                    console_string = get_string_async("Input the room password.", global.password);
                }
                else
                {
                    keyboard_string = global.password;
                    status_color = c_ltgray;
                    status_text = "Press ESC or Enter to stop typing.";
                }

                break;

            case 3:
                sel = 3;
                snd_play(snd_select);

                if (global.is_console)
                {
                    mystring = "";
                    console_string = get_string_async("Input your nickname (maximum 50 characters).", global.nickname);
                }
                else
                {
                    keyboard_string = global.nickname;
                    status_color = c_ltgray;
                    status_text = "Press ESC or Enter to stop typing.\nMaximum 50 characters.";
                }

                break;

            case 4:
                sel = 4;
                snd_play(snd_select);

                if (global.is_console)
                {
                    mystring = "";
                    console_string = get_string_async("Input your name color (use orange, red, blue, green, purple, navy, teal, brown, pink or yellow).", global.color);
                }
                else
                {
                    keyboard_string = global.color;
                    status_color = c_ltgray;
                    status_text = "Press ESC or Enter to stop typing.\nUse orange, red, blue, green, purple, navy, teal, brown, pink or yellow.";
                }

                break;

            case 5:
                sel = 5;
                snd_play(snd_select);
                status_color = c_ltgray;
                status_text = "Press ESC to cancel.";
                break;

            case 6:
            case 7:
            case 8:
            case 9:
                sel = pos;
                snd_play(snd_select);
                status_color = c_ltgray;
                status_text = "Press ESC to cancel.\nNote that trying to use non-English keyboard characters will most likely cause problems!";
                break;

            case 10:
                global.show_connections = !global.show_connections;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;

            case 11:
                global.show_reveals = !global.show_reveals;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;

            case 12:
                global.show_chats = !global.show_chats;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;

            case 13:
                global.show_colors = !global.show_colors;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;

            case 14:
                global.show_goal_marks = !global.show_goal_marks;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;

            case 15:
                global.show_new_cards = !global.show_new_cards;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;

            case 16:
                global.hit_counter = !global.hit_counter;
                scr_save_bingo_data();
                snd_play(snd_select);
                break;
        }
    }

    if (!internet && os_is_network_connected())
    {
        internet = true;
        status_color = c_lime;
        status_text = "Internet connection found!";
    }
    else if (internet && !os_is_network_connected())
    {
        internet = false;
        status_color = c_red;
        status_text = "Internet connection not found!\nRetrying...";
    }
}
else if (sel > 0)
{
    if (keyboard_check_pressed(vk_escape))
    {
        sel = -1;
        keyboard_clear(vk_escape);
        scr_save_bingo_data();
        snd_play(snd_swing);
        status_text = "";
    }

    switch (sel)
    {
        case 1:
            if (global.is_console && mystring != "")
            {
                global.room_id = string_trim(mystring);
                sel = -1;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else
            {
                if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
                    keyboard_string += clipboard_get_text();

                global.room_id = string_trim(keyboard_string);

                if (keyboard_check_pressed(vk_enter))
                {
                    sel = -1;
                    scr_save_bingo_data();
                    snd_play(snd_select);
                    status_text = "";
                }
            }

            break;

        case 2:
            if (global.is_console && mystring != "")
            {
                global.password = string_trim(mystring);
                sel = -1;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else
            {
                if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
                    keyboard_string += clipboard_get_text();

                global.password = string_trim(keyboard_string);

                if (keyboard_check_pressed(vk_enter))
                {
                    sel = -1;
                    scr_save_bingo_data();
                    snd_play(snd_select);
                    status_text = "";
                }
            }

            break;

        case 3:
            if (global.is_console && mystring != "")
            {
                global.nickname = string_copy(string_trim(mystring), 1, 50);
                sel = -1;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else
            {
                if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
                    keyboard_string += clipboard_get_text();

                global.nickname = string_copy(string_trim(keyboard_string), 1, 50);

                if (keyboard_check_pressed(vk_enter))
                {
                    sel = -1;
                    scr_save_bingo_data();
                    snd_play(snd_select);
                    status_text = "";
                }
            }

            break;

        case 4:
            if (global.is_console && mystring != "")
            {
                global.color = string_lower(string_trim(mystring));
                sel = -1;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else
            {
                if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
                    keyboard_string += clipboard_get_text();

                global.color = string_lower(string_trim(keyboard_string));

                if (keyboard_check_pressed(vk_enter))
                {
                    sel = -1;
                    scr_save_bingo_data();
                    snd_play(snd_select);
                    status_text = "";
                }
            }

            break;

        case 5:
            if (button1_p())
            {
                sel = -1;
                scr_reset_bingo_data();
                snd_play(AUDIO_APPEARANCE);
                status_text = "";
            }

            break;

        case 6:
            var key = ossafe_keyboard_lastkey();
            var key_gp = scr_gamepad_lastkey();

            if (key != 0)
            {
                sel = -1;
                global.board_key = key;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else if (key_gp != 0)
            {
                sel = -1;
                global.board_key_gp = key_gp;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }

            break;

        case 7:
            var key = ossafe_keyboard_lastkey();
            var key_gp = scr_gamepad_lastkey();

            if (key != 0)
            {
                sel = -1;
                global.chat_key = key;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else if (key_gp != 0)
            {
                sel = -1;
                global.chat_key_gp = key_gp;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }

            break;

        case 8:
            var key = ossafe_keyboard_lastkey();
            var key_gp = scr_gamepad_lastkey();

            if (key != 0)
            {
                sel = -1;
                global.reveal_key = key;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else if (key_gp != 0)
            {
                sel = -1;
                global.reveal_key_gp = key_gp;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }

            break;

        case 9:
            var key = ossafe_keyboard_lastkey();
            var key_gp = scr_gamepad_lastkey();

            if (key != 0)
            {
                sel = -1;
                global.toggle_chat_key = key;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }
            else if (key_gp != 0)
            {
                sel = -1;
                global.toggle_chat_key_gp = key_gp;
                scr_save_bingo_data();
                snd_play(snd_select);
                status_text = "";
            }

            break;
    }
}
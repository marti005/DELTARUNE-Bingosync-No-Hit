/// IMPORT

try
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        switch (ds_map_find_value(async_load, "id"))
        {
            case http_board:
                var info = json_parse(ds_map_find_value(async_load, "result"));
                var i = 0;
                var j = 0;
                
                for (i = 0; i < array_length(info); i++)
                {
                    var entry = info[i];
                    global.goal_name[i] = entry.name;
                    global.goal_slot[i] = entry.slot;
                    global.goal_colors[i] = entry.colors;
                }
                
                if (!board_connected)
                    board_connected = true;
                
                break;
            
            case http_room_settings:
                var info = json_parse(ds_map_find_value(async_load, "result"));
                global.room_seed = info.settings.seed;
                global.room_lockout = info.settings.lockout_mode;
                board_revealed = !info.settings.hide_card;
                break;

            case http_feed:
                var info = json_parse(ds_map_find_value(async_load, "result"));
                
                for (var i = array_length(info.events) - 1; i >= 0; i--)
                {
                    if (info.events[i].type == "new-card" && info.events[i].is_current == true)
                    {
                        if (info.events[i].timestamp > global.last_card_timestamp)
                        {
                            if (global.last_card_timestamp > 0)
                                scr_chat_message(c_yellow, "Your progress was reset because the board has changed since you last played.");
                            
                            global.last_card_timestamp = info.events[i].timestamp;
                            scr_reset_bingo_data();
                        }
                        break;
                    }
                }

                break;
        }
    }
}
catch (e)
{
}
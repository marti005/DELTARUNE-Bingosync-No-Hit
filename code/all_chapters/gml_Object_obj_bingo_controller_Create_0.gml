/// IMPORT

persistent = true;
board_connected = false;
board_revealed = false;
http_board = -1;
http_room_settings = -1;
http_feed = -1;
global.goal_name = array_create(25, "");
global.goal_slot = array_create(25, "");
global.goal_colors = array_create(25, "blank");
global.room_seed = -1;
global.room_lockout = "";

if (os_is_network_connected())
{
    global.ws_client = network_create_socket(network_socket_wss);
    network_connect_raw_async(global.ws_client, "wss://sockets.bingosync.com/broadcast", 443);
}

#if !CHAPTER_1
function wrong_warp_check()
{
    call_later(16, 1, function()
    {
        if (!instance_exists(obj_mainchara) || (instance_exists(obj_mainchara) && !obj_mainchara.roomenterfreezeend))
        {
            var len = array_length(global.wrong_warps);
            var room_name = room_get_name(room);
            
            for (var i = 0; i < len; i++)
            {
                if (global.wrong_warps[i] == room_name)
                {
                    exit;
                }
                else if (global.wrong_warps[i] == "")
                {
                    global.wrong_warps[i] = room_name;
                    scr_save_bingo_data();
                    
                    if (i == (len - 1))
                        scr_add_goal_progress(70, 1);
                    
                    exit;
                }
            }
        }
    });
}
#endif
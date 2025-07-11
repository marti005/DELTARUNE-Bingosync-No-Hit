/// IMPORT

try
{
    if (ds_map_find_value(async_load, "id") == httppost && ds_map_find_value(async_load, "status") == 0)
    {
        var info = ds_map_find_value(async_load, "result");
        var info_str = string(info);
        sel = -1;
        
        if (string_pos("Sorry, that page doesn't exist!", info_str) > 0)
        {
            status_color = c_red;
            status_text = "Invalid room ID!";
            snd_play(snd_hurt1);
        }
        else if (string_pos("Incorrect Password", info_str) > 0)
        {
            status_color = c_red;
            status_text = "Incorrect password!";
            snd_play(snd_hurt1);
        }
        else if (string_pos("socket_key", info_str) == 0)
        {
            status_color = c_red;
            status_text = "Couldn't connect to Bingosync...\nTry again later.";
            snd_play(snd_hurt1);
        }
        else
        {
            global.ws_key = info;
            scr_save_bingo_data();
            
            if (!instance_exists(obj_bingo_controller))
                instance_create_depth(0, 0, 0, obj_bingo_controller);
            
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            audio_stop_all();
            room_goto(obj_initializer2.roomchoice);
        }
    }
}
catch (e)
{
}
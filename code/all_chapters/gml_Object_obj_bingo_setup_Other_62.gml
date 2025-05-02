/// IMPORT

try
{
    if (ds_map_find_value(async_load, "id") == httppost && ds_map_find_value(async_load, "status") == 0)
    {
        var info = ds_map_find_value(async_load, "result");
        sel = -1;
        
        if (string_pos("Sorry, that page doesn't exist!", string(info)) > 0)
        {
            status_color = c_red;
            status_text = "Invalid room ID!";
        }
        else if (string_pos("Incorrect Password", string(info)) > 0)
        {
            status_color = c_red;
            status_text = "Incorrect password!";
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
            room_goto(global.start_room);
        }
    }
}
catch (e)
{
}
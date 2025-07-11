/// IMPORT

if (active)
{
    if (global.board_room != "b1controls")
        global.board_room = "b1controls";
    
    if (scr_debug())
    {
        if (obj_board_camera.con == 0)
        {
            scr_board_objname();
            var count = 0;
        }
    }
}
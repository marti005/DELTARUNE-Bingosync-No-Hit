/// IMPORT

if (active)
{
    if (global.board_room != "b1susiedig")
        global.board_room = "b1susiedig";

    if (scr_debug())
    {
        if (obj_board_camera.con == 0)
            scr_board_objname();

        draw_set_halign(fa_left);
    }
}
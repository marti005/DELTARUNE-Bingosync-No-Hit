/// PATCH

/// AFTER
            msgset(0, yougot);
/// CODE
            if (global.board_room == "b1susiedig" && point_in_rectangle(obj_mainchara_board.x, obj_mainchara_board.y, 160, 80, 416, 256))
                scr_add_goal_progress(87, 1);
            else if (global.board_room == "b1controls" && point_in_rectangle(obj_mainchara_board.x, obj_mainchara_board.y, 384, 196, 448, 256))
                scr_add_goal_progress(118, 1);
/// END
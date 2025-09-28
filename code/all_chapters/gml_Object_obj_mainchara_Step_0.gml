/// PATCH .ignore if CHAPTER_1

/// AFTER
            global.flag[21] = -10;
/// CODE
            if (instance_exists(obj_bingo_controller))
                obj_bingo_controller.wrong_warp_check();
/// END
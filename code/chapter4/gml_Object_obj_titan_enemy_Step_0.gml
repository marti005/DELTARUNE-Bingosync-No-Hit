/// PATCH

/// BEFORE
            room_goto(room_dw_churchc_insidetitan);
/// CODE
            scr_add_goal_progress(94, 1);
            global.main_bosses[4]++;
            scr_save_bingo_data();

            if (scr_array_total(global.main_bosses, 2))
                scr_add_goal_progress(111, 1);
/// END
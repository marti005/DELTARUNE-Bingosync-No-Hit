/// PATCH

/// AFTER
            global.keyitem[i] = arg0;
/// CODE
            switch (arg0)
            {
                case 2:
                    global.eggs[global.chapter - 1]++;
                    scr_save_bingo_data();
                    
                    if (scr_array_total(global.eggs, 2))
                        scr_add_goal_progress(21, 1);

#if CHAPTER_2
                    if (room == room_dw_city_man)
#endif
                        scr_add_goal_progress(1, 1);
                    break;

                case 13:
                    scr_add_goal_progress(121, 1);
                    break;
            }
/// END
/// PATCH

/// AFTER
                        lightemupcon = 5;
/// CODE
                        scr_add_goal_progress(95, 1);
                        global.main_bosses[3]++;
                        scr_save_bingo_data();

                        if (scr_array_total(global.main_bosses, 2))
                            scr_add_goal_progress(111, 1);
/// END
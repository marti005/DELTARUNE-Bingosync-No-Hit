/// PATCH

/// AFTER
                        snd_play(snd_locker);
/// CODE     
                        global.shop_items[0]++;
                        scr_save_bingo_data();
                        
                        if (global.shop_items[0] >= 1 && global.shop_items[1] >= 1)
                            scr_add_goal_progress(8, 1);
/// END
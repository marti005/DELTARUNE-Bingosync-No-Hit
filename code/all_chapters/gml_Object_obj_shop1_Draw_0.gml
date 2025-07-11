/// PATCH .ignore if CHAPTER_3

/// AFTER
                        snd_play(snd_locker);
/// CODE     
                        global.shop_items[0]++;
                        scr_save_bingo_data();
                        
                        if (scr_array_total(global.shop_items))
                            scr_add_goal_progress(8, 1);
/// END
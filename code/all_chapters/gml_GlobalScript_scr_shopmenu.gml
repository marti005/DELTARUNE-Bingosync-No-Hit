/// PATCH

/// AFTER
                if (menuc[15] == 0)
                {
                    snd_play(snd_locker);
                    global.gold += sellvalue;
/// CODE
                    var file = ((global.chapter - 1) * 3) + global.filechoice;
                    global.money_files[file] += sellvalue;
                    scr_save_bingo_data();
                    
                    if (global.money_files[file] >= 2000)
                        scr_add_goal_progress(0, 1);
                    
                    if (global.money_files[file] >= 3000)
                        scr_add_goal_progress(22, 1);
/// END

/// AFTER
                if (menuc[16] == 0)
                {
                    snd_play(snd_locker);
                    global.gold += sellvalue;
/// CODE
                    var file = ((global.chapter - 1) * 3) + global.filechoice;
                    global.money_files[file] += sellvalue;
                    scr_save_bingo_data();
                    
                    if (global.money_files[file] >= 2000)
                        scr_add_goal_progress(0, 1);
                    
                    if (global.money_files[file] >= 3000)
                        scr_add_goal_progress(22, 1);
/// END

/// AFTER
                if (menuc[17] == 0)
                {
                    snd_play(snd_locker);
                    global.gold += sellvalue;
/// CODE
                    var file = ((global.chapter - 1) * 3) + global.filechoice;
                    global.money_files[file] += sellvalue;
                    scr_save_bingo_data();
                    
                    if (global.money_files[file] >= 2000)
                        scr_add_goal_progress(0, 1);
                    
                    if (global.money_files[file] >= 3000)
                        scr_add_goal_progress(22, 1);
/// END
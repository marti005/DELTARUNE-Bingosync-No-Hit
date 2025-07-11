/// PATCH

/// REPLACE
                global.flag[prizeflag[selectedPrize]] = 1;
/// CODE
            {
                global.flag[prizeflag[selectedPrize]] = 1;
                
                if (prizeflag[selectedPrize] >= 1177 && prizeflag[selectedPrize] <= 1181)
                {
                    global.golden_items[prizeflag[selectedPrize] - 1177]++;
                    scr_save_bingo_data();
                    
                    if (scr_array_total(global.golden_items, 2))
                        scr_add_goal_progress(106, 1);
                }
            }
/// END
/// PATCH .ignore if CHAPTER_1

/// REPLACE
            if (global.flag[global.monstertype[myself] + 600] > 1)
                global.flag[global.monstertype[myself] + 600] = 1;
/// CODE
            if (global.flag[global.monstertype[myself] + 600] >= 1)
            {
                global.flag[global.monstertype[myself] + 600] = 1;
                global.recruits[ds_list_find_index(global.recruits_list, global.monstertype[myself])]++;
                global.chapter_recruits[global.chapter - 2]++;
                scr_save_bingo_data();

                if (scr_array_total(global.recruits, 3))
                    scr_add_goal_progress(71, 1);

#if CHAPTER_3
                if (global.monstertype[myself] == 55)
                    scr_add_goal_progress(124, 1);
#endif

                if (scr_array_total(global.chapter_recruits))
                    scr_add_goal_progress(128, 1);
            }
/// END
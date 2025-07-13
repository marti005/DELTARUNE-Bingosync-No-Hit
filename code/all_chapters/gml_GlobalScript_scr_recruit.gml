/// PATCH .ignore if CHAPTER_1

/// REPLACE
            if (global.flag[global.monstertype[myself] + 600] > 1)
                global.flag[global.monstertype[myself] + 600] = 1;
/// CODE
            if (global.flag[global.monstertype[myself] + 600] >= 1)
            {
                global.flag[global.monstertype[myself] + 600] = 1;
                scr_add_goal_array(global.recruits, ds_list_find_index(global.recruits_list, global.monstertype[myself]), 71);
                scr_add_goal_array(global.chapter_recruits, global.chapter - 2, 128);

#if CHAPTER_3
                if (global.monstertype[myself] == 55)
                    scr_add_goal_progress(124, 1);
#endif
            }
/// END
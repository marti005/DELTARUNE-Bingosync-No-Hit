/// PATCH

#if CHAPTER_1
/// REPLACE
            global.flag[40] += 1;
/// CODE
        {
            global.flag[40] += 1;
            scr_add_goal_progress(3, 1);
            scr_add_goal_progress(16, 1);
            scr_add_goal_progress(31, 1);
        }
/// END
#else
/// AFTER
            global.flag[40] += 1;
/// CODE
            scr_add_goal_progress(3, 1);
            scr_add_goal_progress(16, 1);
            scr_add_goal_progress(31, 1);
/// END
#endif
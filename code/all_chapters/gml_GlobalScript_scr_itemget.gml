/// PATCH

#if CHAPTER_1
/// AFTER
            global.item[i] = arg0;
/// CODE
            if (i == 11)
                scr_add_goal_progress(39, 1);
/// END
#else
/// AFTER
            global.item[__i] = arg0;
/// CODE
            if (__i == 11)
                scr_add_goal_progress(39, 1);
/// END
#endif
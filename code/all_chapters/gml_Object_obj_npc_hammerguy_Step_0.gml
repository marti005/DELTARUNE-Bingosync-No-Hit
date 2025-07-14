/// PATCH .ignore if CHAPTER_3

/// AFTER
        con = 18;
/// CODE
#if CHAPTER_1 || CHAPTER_2
        scr_add_goal_array("fix_us", global.chapter - 1, 24);
#else
        scr_add_goal_array("fix_us", global.chapter - 2, 24);
#endif
/// END

#if !CHAPTER_1
/// AFTER
    times_fused++;
/// CODE     
    scr_add_goal_progress(20, 1);
/// END
#endif
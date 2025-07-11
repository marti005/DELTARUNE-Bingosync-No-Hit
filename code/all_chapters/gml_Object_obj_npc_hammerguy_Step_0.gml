/// PATCH .ignore if CHAPTER_3

/// AFTER
        con = 18;
/// CODE
#if CHAPTER_1 || CHAPTER_2
		global.fix_us[global.chapter - 1]++;
#else
		global.fix_us[global.chapter - 2]++;
#endif
        scr_save_bingo_data();
        
        if (scr_array_total(global.fix_us))
            scr_add_goal_progress(24, 1);
/// END

#if !CHAPTER_1
/// AFTER
    times_fused++;
/// CODE     
    scr_add_goal_progress(20, 1);
/// END
#endif
/// PATCH

/// AFTER
#if CHAPTER_1
        if (global.armor[i] == 0)
        {
#else
        else
        {
#endif
/// CODE
        switch (arg0)
        {
            case 54:
                scr_add_goal_progress(108, 1);
                break;

            case 4:
                global.ribbons[0]++;
                scr_save_bingo_data();
                
                if (scr_array_total(global.ribbons))
                    scr_add_goal_progress(114, 1);
                break;

            case 3:
                global.ribbons[1]++;
                scr_save_bingo_data();
                
                if (scr_array_total(global.ribbons))
                    scr_add_goal_progress(114, 1);
                break;

            case 26:
                global.ribbons[2]++;
                scr_save_bingo_data();
                
                if (scr_array_total(global.ribbons))
                    scr_add_goal_progress(114, 1);
                break;

            case 53:
                scr_add_goal_progress(105, 1);
                global.ribbons[3]++;
                scr_save_bingo_data();
                
                if (scr_array_total(global.ribbons))
                    scr_add_goal_progress(114, 1);
                break;
        }
/// END
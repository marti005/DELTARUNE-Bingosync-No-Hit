/// PATCH

/// AFTER
            if (global.monster[star] == 1)
            {
                if (global.monsterstatus[star] == 1)
                {
/// CODE
// This is a workaround for making the regular Tasques count towards the spare/pacify goals in the Tasque Manager fight
#if CHAPTER_2
                    var tasques = 0;
                    
                    if (global.encounterno == 57 && global.monstertype[star] == 42)
                    {
                        with (obj_tasque_enemy)
                            tasques++;
                    }

                    scr_add_goal_progress(2, 1 + tasques);
                    scr_add_goal_progress(10, 1 + tasques);
                    scr_add_goal_progress(30, 1 + tasques);
                    scr_add_goal_progress(80, 1 + tasques);
#else
                    scr_add_goal_progress(2, 1);
                    scr_add_goal_progress(10, 1);
                    scr_add_goal_progress(30, 1);
                    scr_add_goal_progress(80, 1);
#endif
#if CHAPTER_1
                    if(global.monstertype[star] == 11)
                        scr_add_goal_progress(66, 1);
#endif
/// END

/// AFTER
        case 6:
/// CODE
            scr_add_goal_progress(79, 1);
/// END

#if !CHAPTER_1
/// AFTER
        case 11:
/// CODE
            scr_add_goal_progress(23, 1);
/// END
#endif

/// AFTER
            if (global.mercymod[star] >= 100)
            {
/// CODE
#if CHAPTER_2
                var tasques = 0;
                
                if (global.encounterno == 57 && global.monstertype[star] == 42)
                {
                    with (obj_tasque_enemy)
                        tasques++;
                }

                scr_add_goal_progress(2, 1 + tasques);
                scr_add_goal_progress(10, 1 + tasques);
                scr_add_goal_progress(30, 1 + tasques);
#else
                scr_add_goal_progress(2, 1);
                scr_add_goal_progress(10, 1);
                scr_add_goal_progress(30, 1);
#endif
#if CHAPTER_1
                if(global.monstertype[star] == 11)
                    scr_add_goal_progress(66, 1);
#endif
/// END

#if CHAPTER_1
/// AFTER
        case 204:
/// CODE
            if(global.encounterno == 8 && !global.clover_manual)
                global.clover_manual = true;
/// END
#endif
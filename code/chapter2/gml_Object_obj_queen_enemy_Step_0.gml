/// PATCH

/// AFTER
    snd_free(global.batmusic[0]);
/// CODE     
    scr_add_goal_progress(15, 1);
    global.main_bosses[1]++;
    scr_save_bingo_data();

    if (scr_array_total(global.main_bosses, 2))
        scr_add_goal_progress(111, 1);
/// END

/// BEFORE
                idlesprite = spr_cutscene_25_queen_chair_shocked;
/// CODE
                scr_add_goal_progress(74, 1);
/// END  
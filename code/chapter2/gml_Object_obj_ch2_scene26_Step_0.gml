/// PATCH

/// AFTER
    scr_tempsave();
    room_goto(room_dw_mansion_top_post);
/// CODE
    scr_add_goal_progress(14, 1);
    global.main_bosses[2]++;
    scr_save_bingo_data();

    if (scr_array_total(global.main_bosses, 2))
        scr_add_goal_progress(111, 1);
/// END
/// PATCH

/// AFTER
    snd_play(snd_swallow);
/// CODE
    global.bananas[0]++;
    scr_save_bingo_data();
    
    if (scr_array_total(global.bananas))
        scr_add_goal_progress(18, 1);
/// END
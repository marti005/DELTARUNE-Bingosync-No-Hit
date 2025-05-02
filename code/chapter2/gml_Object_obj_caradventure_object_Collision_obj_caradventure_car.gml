/// PATCH

/// AFTER
    snd_play(snd_swallow);
/// CODE
    global.bananas[0]++;
    scr_save_bingo_data();
    
    if (global.bananas[0] >= 1 && global.bananas[1] >= 1)
        scr_add_goal_progress(18, 1);
/// END
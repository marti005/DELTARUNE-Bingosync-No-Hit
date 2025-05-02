/// PATCH

/// AFTER
        global.gold += global.monstergold[3];
/// CODE
        var file = ((global.chapter - 1) * 3) + global.filechoice;
        global.money_files[file] += global.monstergold[3];
        scr_save_bingo_data();
        
        if (global.money_files[file] >= 2000)
            scr_add_goal_progress(0, 1);
        
        if (global.money_files[file] >= 3000)
            scr_add_goal_progress(22, 1);
/// END
/// PATCH .ignore if CHAPTER_1
// Chapter 1 - obj_treasure_room_Other_10

/// REPLACE
        global.gold += arg0;
/// CODE
    {
        global.gold += arg0;
        var file = ((global.chapter - 1) * 3) + global.filechoice;
        global.money_files[file] += arg0;
        scr_save_bingo_data();
        
        if (global.money_files[file] >= 2000)
            scr_add_goal_progress(0, 1);
        
        if (global.money_files[file] >= 3000)
            scr_add_goal_progress(22, 1);
    }
/// END
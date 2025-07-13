/// PATCH .ignore if CHAPTER_1
// Chapter 1 - obj_treasure_room_Other_10

/// REPLACE
        global.gold += arg0;
/// CODE
    {
        global.gold += arg0;
        scr_add_goal_money(arg0);
    }
/// END
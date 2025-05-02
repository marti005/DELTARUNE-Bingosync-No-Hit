/// PATCH

/// AFTER
    touched = 1;
/// CODE
    if (room == room_hospital_hallway)
        scr_add_goal_progress(84, 1);

#if CHAPTER_2
    else if (room == room_dw_mansion_potBalance && instance_exists(obj_racingline) && !global.failed_pot_balance)
        scr_add_goal_progress(76, 1);
#endif
/// END
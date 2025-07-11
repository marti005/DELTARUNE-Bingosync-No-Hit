/// PATCH

/// PREPEND
switch (global.encounterno)
{
    case 74:
        global.smorg[1]++;
        scr_save_bingo_data();
        
        if (scr_array_total(global.smorg))
            scr_add_goal_progress(27, 1);
        
        break;
    
    case 58:
        global.berdly_encounters[0]++;
        scr_save_bingo_data();
        
        if (scr_array_total(global.berdly_encounters))
            scr_add_goal_progress(34, 1);
        
        break;
    
    case 83:
        if (global.flag[644] == 1)
            scr_add_goal_progress(50, 1);
        else
            scr_add_goal_progress(61, 1);
        
        break;
    
    case 81:
        if (global.flag[640] == 1)
            scr_add_goal_progress(52, 1);
        else
            scr_add_goal_progress(53, 1);
        
        break;
    
    case 56:
        if (room == room_dw_mansion_potBalance && !global.failed_pot_balance)
            global.failed_pot_balance = true;
        
        break;
}
/// END
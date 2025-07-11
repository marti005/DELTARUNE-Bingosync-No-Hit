/// PATCH

/// REPLACE
        global.flag[itemflag] = 1;
/// CODE     
    {
        global.flag[itemflag] = 1;
        
        switch (itemflag)
        {
            case 137:
                scr_add_goal_progress(56, 1);
                break;
            
            case 139:
                scr_add_goal_progress(69, 1);
                break;
        }
    }
/// END
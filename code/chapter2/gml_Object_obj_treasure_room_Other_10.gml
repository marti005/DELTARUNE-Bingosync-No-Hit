/// PATCH

/// REPLACE
        global.flag[itemflag] = 1;
/// CODE     
    {
        global.flag[itemflag] = 1;
        
        switch (itemflag)
        {
            case 123:
                global.revivemints[2]++;
                scr_save_bingo_data();
                var _total = 0;

                for (var i = 0; i < array_length(global.revivemints); i++)
                {
                    if (global.revivemints[i] >= 1)
                        _total++;
                }

                if (_total >= 2)
                    scr_add_goal_progress(36, 1);
                
                break;
            
            case 137:
                scr_add_goal_progress(56, 1);
                break;
            
            case 139:
                scr_add_goal_progress(69, 1);
                break;
        }
    }
/// END
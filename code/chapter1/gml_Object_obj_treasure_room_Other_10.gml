/// PATCH

/// AFTER
    if (itemtype == "gold")
    {
/// CODE
        var file = ((global.chapter - 1) * 3) + global.filechoice;
        global.money_files[file] += t_itemid;
        scr_save_bingo_data();
        
        if (global.money_files[file] >= 2000)
            scr_add_goal_progress(0, 1);
        
        if (global.money_files[file] >= 3000)
            scr_add_goal_progress(22, 1);
/// END

/// AFTER
    if (noroom == 0)
    {
/// CODE
        switch (itemflag)
        {
            case 109:
                scr_add_goal_progress(26, 1);
                break;

            case 107:
                global.revivemints[0]++;
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

            case 114:
                global.revivemints[1]++;
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
        }
/// END
/// PATCH

/// REPLACE
                    global.flag[itemflag] = 1;
/// CODE     
                {
                    global.flag[itemflag] = 1;
                    global.revivemints[3]++;
                    scr_save_bingo_data();
                    var _total = 0;

                    for (var i = 0; i < array_length(global.revivemints); i++)
                    {
                        if (global.revivemints[i] >= 1)
                            _total++;
                    }

                    if (_total >= 2)
                        scr_add_goal_progress(36, 1);
                }
/// END
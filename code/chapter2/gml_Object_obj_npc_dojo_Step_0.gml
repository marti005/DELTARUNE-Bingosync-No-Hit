/// PATCH

/// AFTER
        if (global.flag[dojoFlag] == 0)
        {
/// CODE
            global.dojo_challenges[dojoFlag - 810]++;
            scr_save_bingo_data();
            var _total = 0;

            for (var i = 0; i < array_length(global.dojo_challenges); i++)
            {
                if (global.dojo_challenges[i] >= 1)
                    _total++;
            }

            if (_total >= 3)
                scr_add_goal_progress(32, 1);
/// END
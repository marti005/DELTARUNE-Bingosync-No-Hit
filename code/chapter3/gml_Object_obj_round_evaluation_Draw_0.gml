/// PATCH

/// BEFORE
            _col = c_pink;
            
            if (currentphyspoints == physicalchallengepoints)
                _col = 65535;
            
            if (currentphyspoints < 350 && !madesound)
/// CODE
            if (floor(rtimer) == 60 && currentphyspoints >= 400)
                scr_add_goal_progress(119, 1);
/// END

/// BEFORE
            var rankstring = desiredletter + "-" + roundcompletetext2;
/// CODE
            if (floor(rtimer) == 60 && desiredletter == "Z")
                scr_add_goal_progress(85, 1);
/// END
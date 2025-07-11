/// PATCH

/// REPLACE
        if (puzzle_id != 2)
            snd_play(snd_won);
        else
            snd_play(snd_won_skipping);
/// CODE
        if (puzzle_id != 2)
        {
            snd_play(snd_won);
        }
        else
        {
            snd_play(snd_won_skipping);
            scr_add_goal_progress(17, 1);
        }
/// END
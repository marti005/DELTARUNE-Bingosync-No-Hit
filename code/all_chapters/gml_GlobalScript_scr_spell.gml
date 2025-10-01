/// PATCH
// Why isn't Dual Heal already like this?
// Fixes Dual Heal counting 3 times for the "Heal in battle 5 times" goal
// Also fixes Dual Heal not always counting from scr_spelltext for some reason

/// REPLACE
            for (i = 0; i < 3; i += 1)
            {
                scr_heal(i, healnum);
/// CODE
            scr_add_goal_progress(79, 1);
            scr_healall(healnum);

            for (i = 0; i < 3; i += 1)
            {
/// END
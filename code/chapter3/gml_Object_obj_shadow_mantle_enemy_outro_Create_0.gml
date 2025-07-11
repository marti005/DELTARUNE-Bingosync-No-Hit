/// PATCH

/// PREPEND
scr_add_goal_progress(100, 1);
global.secret_bosses[2]++;
scr_save_bingo_data();

if (scr_array_total(global.secret_bosses, 2))
    scr_add_goal_progress(110, 1);
/// END
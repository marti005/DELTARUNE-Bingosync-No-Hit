/// PATCH

/// AFTER
    if (itemtype == "gold")
    {
/// CODE
        scr_add_goal_money(t_itemid);
/// END

/// AFTER
    if (noroom == 0)
    {
/// CODE
        if (itemflag == 109)
            scr_add_goal_progress(26, 1);
/// END
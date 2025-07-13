/// PATCH

/// AFTER
        if (room != room_town_church)
        {
            with (obj_border_controller)
                show_border();
        }
/// CODE
        else
        {
            scr_add_goal_progress(28, 1);
        }
/// END
/// PATCH

/// REPLACE
    if (button3_h() == 1)
/// CODE
    if (button3_h() == 1 || global.chat_typing || global.starring_goals)
/// END

/// REPLACE
        if (automash_timer == 0)
            automash_timer = 1;
        else
            automash_timer = 0;
        
        if (automash_timer == 0)
            button1 = 1;
        
        if (automash_timer == 1)
            button2 = 1;
/// CODE
        button1 = 1;
        button2 = 1;
/// END
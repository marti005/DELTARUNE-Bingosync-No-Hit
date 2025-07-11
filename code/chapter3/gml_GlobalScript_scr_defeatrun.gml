/// PATCH

/// AFTER
                _rtext.image_index = 7;
/// CODE
                switch (global.monstertype[myself])
                {
                    case 55:
                        scr_add_goal_progress(125, 1);
                        break;

                    case 13:
                        scr_add_goal_progress(126, 1);
                        break;
                }
/// END
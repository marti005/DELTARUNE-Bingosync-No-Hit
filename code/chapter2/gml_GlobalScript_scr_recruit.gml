/// PATCH

/// REPLACE
            if (global.flag[global.monstertype[myself] + 600] > 1)
                global.flag[global.monstertype[myself] + 600] = 1;
/// CODE
            if (global.flag[global.monstertype[myself] + 600] >= 1)
            {
                global.flag[global.monstertype[myself] + 600] = 1;
                
                switch (global.monstertype[myself])
                {
                    case 30:
                        global.recruits[0]++;
                        break;
                    
                    case 31:
                        global.recruits[1]++;
                        break;
                    
                    case 32:
                        global.recruits[2]++;
                        break;
                    
                    case 33:
                        global.recruits[3]++;
                        break;
                    
                    case 34:
                        global.recruits[4]++;
                        break;
                    
                    case 35:
                        global.recruits[5]++;
                        break;
                    
                    case 36:
                        global.recruits[6]++;
                        break;
                    
                    case 40:
                        global.recruits[7]++;
                        break;
                    
                    case 42:
                        global.recruits[8]++;
                        break;
                    
                    case 44:
                        global.recruits[9]++;
                        break;
                }
                
                scr_save_bingo_data();
                var _total = 0;
                
                for (var i = 0; i < array_length(global.recruits); i++)
                {
                    if (global.recruits[i] >= 1)
                        _total++;
                }
                
                if (_total >= 2)
                    scr_add_goal_progress(71, 1);
            }
/// END
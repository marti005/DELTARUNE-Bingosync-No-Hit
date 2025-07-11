/// PATCH

/// AFTER
                        other.flagtoset = 1227;
/// CODE
						global.b2_photos[0]++;
						scr_save_bingo_data();

						if (scr_array_total(global.b2_photos))
							scr_add_goal_progress(117, 1);
/// END

/// AFTER
                    other.flagtoset = 1041;
/// CODE
					global.b2_photos[1]++;
					scr_save_bingo_data();

					if (scr_array_total(global.b2_photos))
						scr_add_goal_progress(117, 1);
/// END

/// AFTER
                    other.flagtoset = 1043;
/// CODE
					global.b2_photos[2]++;
					scr_save_bingo_data();

					if (scr_array_total(global.b2_photos))
						scr_add_goal_progress(117, 1);
/// END

/// AFTER
                    other.flagtoset = 1042;
/// CODE
					global.b2_photos[3]++;
					scr_save_bingo_data();

					if (scr_array_total(global.b2_photos))
						scr_add_goal_progress(117, 1);
/// END
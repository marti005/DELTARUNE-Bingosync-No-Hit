/// PATCH

#if CHAPTER_1
/// AFTER
                    room_goto(PLACE_CONTACT);
/// CODE
                    global.money_files[global.filechoice] = 0;
                    scr_save_bingo_data();
#else
/// AFTER
if (STARTGAME == 1)
{
/// CODE
    var file = ((global.chapter - 1) * 3) + global.filechoice;
    global.money_files[file] = global.money_files[file - 3];
    scr_save_bingo_data();
#endif
/// END
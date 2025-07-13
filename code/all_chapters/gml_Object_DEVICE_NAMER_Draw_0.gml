/// PATCH .ignore if CHAPTER_1

/// AFTER
if (EVENT == 76)
{
/// CODE
    global.money_files[((global.chapter - 1) * 3) + global.filechoice] = 0;
    scr_save_bingo_data();
/// END
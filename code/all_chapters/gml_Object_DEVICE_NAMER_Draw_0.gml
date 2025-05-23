/// PATCH .ignore if CHAPTER_1

/// AFTER
if (EVENT == 76)
{
/// CODE
    var file = ((global.chapter - 1) * 3) + global.filechoice;
    global.money_files[file] = 0;
    scr_save_bingo_data();
/// END
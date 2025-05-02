/// PATCH

/// BEFORE
#if CHAPTER_1
if (obj_gamecontroller.gamepad_active == 1)
#else
if (obj_gamecontroller.gamepad_active == 1 && quicksaved != 2)
#endif
/// CODE
if (!global.chat_typing)
/// END
/// PATCH

/// PREPEND
if (instance_exists(obj_bingo_setup))
    exit;
/// END

#if CHAPTER_1
/// REPLACE
if (global.is_console)
{
    if (!variable_global_exists("init_prefetch"))
    {
        global.init_prefetch = true;
        scr_prefetch_textures();
    }
}
/// CODE
if (!loadtex.loaded)
    exit;
/// END
#else
/// REPLACE
if (global.is_console)
{
    if (global.savedata_async_id >= 0)
/// CODE
// Removes the condition entirely
if (true)
{
    if (global.savedata_async_id >= 0)
/// END
#endif

/// REPLACE
    room_goto(roomchoice);
/// CODE
    instance_destroy(loadtex);
    
    if (!instance_exists(obj_bingo_setup))
        instance_create_depth(0, 0, 0, obj_bingo_setup);
/// END
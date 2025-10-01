/// IMPORT

function scr_healall(arg0)
{
    global.count_once = false;

    for (i = 0; i < 3; i += 1)
    {
        if (global.char[i] != 0)
        {
            scr_heal(i, arg0);
            global.count_once = true;
        }
    }

    global.count_once = false;
}
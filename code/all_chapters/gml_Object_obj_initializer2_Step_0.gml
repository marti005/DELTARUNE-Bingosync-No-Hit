/// PATCH

/// PREPEND
if (instance_exists(obj_bingo_setup))
    exit;
/// END

/// REPLACE
    room_goto(roomchoice);
/// CODE
    global.start_room = roomchoice;
    
    if (!instance_exists(obj_bingo_setup))
        instance_create_depth(0, 0, 0, obj_bingo_setup);
/// END
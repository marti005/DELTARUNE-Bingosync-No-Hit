/// PATCH

/// REPLACE
function scr_damage()
/// CODE
function scr_damage(singletarget = true)
/// END

/// BEFORE
scr_damage_cache();
/// CODE
if (singletarget) scr_add_hit();
/// END
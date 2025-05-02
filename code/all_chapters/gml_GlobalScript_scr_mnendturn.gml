/// PATCH
// Prevent heals that occur when characters are down to count towards the "Heal in battle" goal

/// BEFORE
                dmgwr.damage = scr_heal(i, healamt);
/// CODE
                global.count_once = true;
/// END

/// AFTER
                dmgwr.damage = scr_heal(i, healamt);
/// CODE
                global.count_once = false;
/// END
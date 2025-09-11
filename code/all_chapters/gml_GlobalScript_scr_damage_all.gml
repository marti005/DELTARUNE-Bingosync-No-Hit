/// PATCH

/// BEFORE
scr_damage_cache();
/// CODE
scr_add_hit();
/// END

/// REPLACE
scr_damage();
/// CODE
scr_damage(false);
/// END
/// PATCH

/// BEFORE
#if CHAPTER_1 || CHAPTER_2
scr_damage_cache();
#else
remdamage = damage;
#endif
/// CODE
scr_add_hit();
/// END

/// REPLACE
scr_damage();
/// CODE
scr_damage(false);
/// END
/// PATCH

#if CHAPTER_3 || CHAPTER_4
/// BEFORE
remdamage = damage;
/// CODE
scr_add_hit();
/// END
#else
/// BEFORE
scr_damage_cache();
/// CODE
scr_add_hit();
/// END
#endif

/// REPLACE
scr_damage();
/// CODE
scr_damage(false);
/// END
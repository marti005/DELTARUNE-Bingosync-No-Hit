/// IMPORT

if (prog < array_length(pages))
{
    texture_prefetch(pages[prog]);
    prog++;
}
else
{
    loaded = true;
    global.prefetchtexload = true;
}
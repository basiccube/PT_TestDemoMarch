for (var i = 0; i < image_xscale; i++)
{
    for (var j = 0; j < image_yscale; j++)
	{
		repeat (4)
			instance_create((x + 16 + (32 * i)), (y + 16 + (32 * j)), obj_debris)
		sound_play(sfx_break, false)
	}
}
tile_destroy_multiple(32, "Tiles_1")


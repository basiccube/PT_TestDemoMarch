/// @params x
/// @params y
/// @params tilemap_id
function tile_destroy(argument0, argument1, argument2)
{
	var data = tilemap_get_at_pixel(argument2, argument0, argument1)
	data = tile_set_empty(data)
	tilemap_set_at_pixel(argument2, data, argument0, argument1)
}

/// @params tile_size
/// @params layer_id
function tile_destroy_multiple(argument0, argument1)
{
	var lay_id = layer_get_id(argument1)
	if (lay_id != -1)
	{
		var map_id = layer_tilemap_get_id(lay_id)
		var w = (abs(sprite_width) / argument0)
		var h = (abs(sprite_height) / argument0)
		var ix = sign(image_xscale)
		var iy = sign(image_yscale)
		if (ix < 0)
			w++
		for (var yy = 0; yy < h; yy++)
		{
			for (var xx = 0; xx < w; xx++)
				tile_destroy((x + ((xx * argument0) * ix)), (y + ((yy * argument0) * iy)), map_id)
		}
	}
}
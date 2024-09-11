input_get()
if (hooked == 1)
{
    obj_player.x = x + 18 + hspeed
    obj_player.y = y + 56
    if key_jump
    {
        with (obj_player)
        {
            jumpAnim = false
            state = states.jump
            machslideAnim = true
            image_index = 0
            vsp = 1
        }
		hookable = false
        hooked = 0
		alarm[0] = 50
    }
}
if (place_meeting(x, y + 16, obj_player))
{
	with (obj_player)
	{
		if (state == states.jump && other.hooked == 0 && other.hookable)
		{
			state = states.hang
			xscale = 1
			other.hooked = 1
			sprite_index = spr_player_hang
		}
	}
}

if (place_meeting(x, y, obj_hookend))
	hspeed *= -1
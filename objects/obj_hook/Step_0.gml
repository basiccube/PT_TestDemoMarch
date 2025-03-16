input_get()
if hooked
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
        hooked = false
		alarm[0] = 50
    }
}

if place_meeting(x, y + 16, obj_player)
{
	with (obj_player)
	{
		if (state == states.jump && !other.hooked && other.hookable)
		{
			state = states.hang
			xscale = 1
			other.hooked = true
			sprite_index = spr_player_hang
		}
	}
}

if place_meeting(x, y, obj_hookend)
	hspeed *= -1
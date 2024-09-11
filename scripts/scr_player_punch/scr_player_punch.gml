function scr_player_punch()
{
	input_get()
	hsp = (xscale * movespeed)
	if (movespeed >= 0)
		movespeed -= 0.2
	if (movespeed <= 0)
		state = states.normal
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	machslideAnim = true
	moveAnim = true
	stopAnim = true
	crouchAnim = true
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1)
	{
	    machhitAnim = false
	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    sound_play(sfx_bump, true)
	}
	else if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1)
	{
	    machhitAnim = false
	    state = states.bump
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    sound_play(sfx_bump, true)
	}
	if (floor(image_index) == (image_number - 1))
	    image_speed = 0
	else
		image_speed = 0.35
	sprite_index = spr_player_punch
	perform_collisions()
}

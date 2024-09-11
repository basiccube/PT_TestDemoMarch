function scr_player_mach1()
{
	input_get()
	landAnim = false
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1)
	{
	    mach2 = 0
	    state = states.normal
	    movespeed = 0
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1)
	{
	    mach2 = 0
	    state = states.normal
	    movespeed = 0
	}
	if (movespeed <= 6)
	    movespeed += 0.5
	machhitAnim = false
	hsp = floor(xscale * movespeed)
	if (key_jump && place_meeting(x, (y + 1), obj_collisionparent) && key_attack)
	{
	    momemtum = 1
	    vsp = -9
	    state = states.jump
	    jumpAnim = true
	    image_index = 0
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (mach2 < 35)
	        mach2++
	    if (mach2 >= 35)
	    {
			flash = 1
	        state = states.mach2
	    }
	}
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	{
	    momemtum = 1
	    state = states.jump
	    jumpAnim = false
	    image_index = 0
	}
	if (!key_attack && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    state = states.normal
	    image_index = 0
	    mach2 = 0
	    machslideAnim = true
	}
	
	sound_play(sfx_mach1, true)
	sprite_index = spr_player_mach
	image_speed = 0.25
	
	if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_collisionparent))
	    instance_create(x, y, obj_dashcloud)
	perform_collisions()
}

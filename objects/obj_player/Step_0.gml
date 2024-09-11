switch state
{
    case states.normal:
        scr_player_normal()
        break
    case states.highjump:
        scr_player_highjump()
        break
    case states.punch:
        scr_player_punch()
        break
    case states.tackle:
        scr_player_tackle()
        break
    case states.slipnslide:
        scr_player_slipnslide()
        break
    case states.ladder:
        scr_player_ladder()
        break
    case states.jump:
        scr_player_jump()
        break
    case states.victory:
        scr_player_victory()
        break
    case states.comingoutdoor:
        scr_player_comingoutdoor()
        break
    case states.crouch:
        scr_player_crouch()
        break
    case states.crouchjump:
        scr_player_crouchjump()
        break
    case states.mach1:
        scr_player_mach1()
        break
    case states.mach2:
        scr_player_mach2()
        break
    case states.machslide:
        scr_player_machslide()
        break
    case states.bump:
        scr_player_bump()
        break
    case states.hurt:
        scr_player_hurt()
        break
    case states.freefall:
        scr_player_freefall()
        break
    case states.freefallland:
        scr_player_freefallland()
        break
    case states.hang:
        scr_player_hang()
        break
    case states.door:
        scr_player_door()
        break
}

if (input_buffer_jump < 8)
    input_buffer_jump++
if (key_particles == 1 && global.key_inv == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (state != states.jump)
    turn = 0
if (inv_frames == 0 && hurted == 0 && state != states.door && state != states.comingoutdoor)
    image_alpha = 1

if (state == states.mach2 || state == states.punch || state == states.freefall)
    attacking = 1
else
    attacking = 0

if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != states.normal)
    dashdust = 0
if (state != states.mach1 && state != states.jump)
    momemtum = 0
if (movespeed < 8)
    dashdust = 0
if (state != states.jump)
    ladderbuffer = 0
if (state != states.jump)
    stompAnim = false
if (state != states.bump && state != states.crouch && state != states.hurt && state != states.crouchjump)
    mask_index = spr_player_mask
else
    mask_index = spr_crouchmask
if (state != states.hurt)
    hurtsound = 0


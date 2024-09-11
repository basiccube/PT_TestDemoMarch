with (obj_player)
{
    if (y < other.y && attacking == 0 && (state == states.jump || state == states.highjump))
    {
        if (other.bounce == 0 && key_jump2 && vsp > 0)
        {
            sound_play(sfx_superjump, true)
            roam = 0
            other.bounce = 1
            other.image_index = 0
            sprite_index = spr_player_Sjump
            image_index = 0
            stompAnim = true
            vsp = -11
            other.alarm[0] = 150
            state = states.jump
        }
    }
}
if (obj_player.attacking == 1)
{
    instance_destroy()
    instance_create(x, y, obj_slimedead)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    sound_play(sfx_enemyhit, false)
}

with (obj_player)
{
    if (!(y < other.y) && attacking == 0 && state != states.hurt && hurted == 0 && state != states.bump)
    {
        instance_create(x, y, obj_spikehurteffect)
		sound_play(sfx_hurt, true)
        state = states.hurt
        image_index = 0
        flash = 1
        if (x != other.x)
        {
            xscale = (-(sign((x - other.x))))
            hsp = (sign((x - other.x)) * 5)
        }
        else
            hsp = ((-xscale) * 5)
        if (!(place_meeting(x, (y + 1), obj_wall)))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
}


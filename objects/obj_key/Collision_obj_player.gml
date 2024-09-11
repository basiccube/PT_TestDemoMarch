if (inv_frame == 0 && obj_player.state != states.hurt)
{
    instance_destroy()
    global.key_inv = 1
    obj_player.key_particles = 1
    obj_player.alarm[7] = 30
}
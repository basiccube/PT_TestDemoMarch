with (obj_player)
{
    if (state == states.mach1 || state == states.mach2 || state == states.machslide || state == states.slipnslide)
    {
        other.drop = 1
        state = states.slipnslide
        if (movespeed < 8)
            movespeed = 8
    }
}


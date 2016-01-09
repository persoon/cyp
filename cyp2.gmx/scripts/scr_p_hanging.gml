image_speed = 0;
image_index = 8;
if(key_jump)
{
    ysp = -jumpspeed_max;
    //xsp = movespeed_max;
    if(move_x != 0 && sign(move_x) != image_xscale){xsp = -movespeed_max * image_xscale;}
    state = pstate.air;
}

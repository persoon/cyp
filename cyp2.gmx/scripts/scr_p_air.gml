scr_p_air_animate();

//wall jumping:
if     (place_meeting(round(x+2), round(y), par_collide))
{    
    if(key_jump) //wall jump
    {
        ysp = -jumpspeed_max;
        xsp = -movespeed_max;
    }
}
else if(place_meeting(round(x-2), round(y), par_collide) && key_jump)
{
    if(key_jump) //wall jump
    {
        ysp = -jumpspeed_max;
        xsp = movespeed_max;
    }
}

if(xsp < 1 && xsp > -1 && ysp != 0)
{
    xsp = move_x * movespeed;
}

//change states:
if(place_meeting(round(x), round(y+1), par_collide))
{
    state = pstate.ground;
    scr_p_state_init();
}

if(key_held_attack && sign(ysp) == 1)
{
    state = pstate.air_attack;
    scr_p_state_init();
}

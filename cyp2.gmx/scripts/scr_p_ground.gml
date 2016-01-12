if(place_meeting(round(x), round(y+1), par_collide)) //jumping changes state
{
    xsp = move_x * movespeed;
    scr_p_ground_animate();
    ysp = key_jump * -jumpspeed_max;
    if(key_attack)
    {
        state = pstate.attack;
        scr_p_state_init();
    }
}
else
{
    state = pstate.air;
    scr_p_state_init();
}



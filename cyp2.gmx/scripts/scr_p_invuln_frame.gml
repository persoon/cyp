if(hp < hp_old)
{
    hp_old = hp;
    if(state != pstate.air)
    {
        xsp = damage_dir * knockback * 2;
        ysp -= 2;
    }
    alarm_set(0, 30);
    invulnerable = true;
}
if(alarm_get(0)%5 == 0){image_alpha = 0;}
else{image_alpha = 1;}

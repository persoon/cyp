xsp = move_x * movespeed;
image_speed = 0.15;
if(old_attack_number != attack_number)
{
    if(attack[old_attack_number] == 0){state = pstate.ground;scr_p_state_init();}
    else{attack[old_attack_number] = 0;}
    old_attack_number = attack_number;
}
else
{
    if(xsp != 0)
    {
        sprite_index = spr_player_1_sword_run;
    }
    else
    {
        sprite_index = spr_player_1_sword;
    }
}

attack_number = floor(image_index/4);
if(key_attack) //register another attack
{
    attack[attack_number] = 1;
}

xsp = move_x * movespeed;
image_speed = 0.2;
if(old_attack_number != attack_number)
{
    if(attack[old_attack_number] == 0){state = pstate.ground;scr_p_state_init();}
    else{attack[old_attack_number] = 0;}
    old_attack_number++;
}
else
{
    /*if(xsp != 0)
    {
        sprite_index = spr_player_1_sword_run;
    }
    else
    {
        sprite_index = spr_player_1_sword;
    }*/
    sprite_index = spr_player_1_sword;
}
if(image_index < 6)
{

}
else if(image_index >= 6 && image_index < 11)
    case 6:
    attack_number = 1;
    break;
    case 11:
    attack_number = 2;
    break;
    case >=15:
    attack_number = 0;
    break;
    
}
attack_number = floor(image_index/(6-attack_number));
if(key_attack) //register another attack
{
    attack[attack_number] = 1;
}

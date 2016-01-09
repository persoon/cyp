switch(state)
{
    case pstate.ground:
    {
        sprite_index = spr_player_1;
        image_index = 0;
        movespeed = movespeed_max;
    }
    break;
    case pstate.air:
    {
        sprite_index = spr_player_1;
        image_speed = 0;
        image_index = 5;
        movespeed =  0.4 * movespeed_max; //can only use if jumping almost straight upwards
        
    }
    break;
    case pstate.hanging:
    {
        sprite_index = spr_player_1;
        image_speed = 0;
        image_index = 8;   
    }
    break;
    case pstate.attack:
    {
        sprite_index = spr_player_1_sword;
        image_speed = 0.15;
        image_index = 0;
        movespeed = movespeed_max * 0.3;
        
        attack[3] = 0;
        attack_number = 0;
        old_attack_number = 0;

    }
    break;
    case pstate.air_attack:
    {
        sprite_index = spr_player_1_sword_air;
        image_speed = 0.20;
        image_index = 0;
    }
}

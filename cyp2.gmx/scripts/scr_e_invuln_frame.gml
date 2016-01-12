//for enemies that get knockedback and have invulnerability frame

if(hp < hp_old)
{
    hp_old = hp;
    if(instance_exists(obj_player)){xsp  = obj_player.image_xscale * 3;}
    ysp -= 2;
    alarm_set(0, 30);
    invulnerable = true;
}
if(alarm_get(0)%5 == 0){image_alpha = 0;}
else{image_alpha = 1;}


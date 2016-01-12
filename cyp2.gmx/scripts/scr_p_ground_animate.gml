//sprite_index = spr_player_1;
if(xsp == 0)
{
    image_speed = 0.02;
    if(round(image_index) > 3){image_index = 0;}
}
else
{
    image_speed = 0.15;
    if(image_index < 4 || round(image_index) >= 8){image_index = 4;}
}

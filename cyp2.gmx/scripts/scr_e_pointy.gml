//for enemies that hurt you when you touch them

lifeform = instance_place(x, y, obj_lifeform);
if(lifeform != noone)
{
    if(lifeform.team != team && !lifeform.invulnerable && alarm[0] == -1) //pointy enemies aren't pointy when they have taken damage
    {
        lifeform.hp -= damage;
        lifeform.damage_dir = image_xscale;
    }
}

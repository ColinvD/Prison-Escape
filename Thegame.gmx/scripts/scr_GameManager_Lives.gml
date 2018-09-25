player = instance_find(obj_Player, 0);
if(player.lives >= 3)
{
    draw_sprite_ext(spr_live, 0, 0 + 40, 10, 1, 1, 0, c_white, 1);
    draw_sprite_ext(spr_live, 0, 0 + 40, 90, 1, 1, 0, c_white, 1);
    draw_sprite_ext(spr_live, 0, 0 + 40, 170, 1, 1, 0, c_white, 1);
}
else if (player.lives == 2)
{
    draw_sprite_ext(spr_live, 0, 0 + 40, 10, 1, 1, 0, c_white, 1);
    draw_sprite_ext(spr_live, 0, 0 + 40, 90, 1, 1, 0, c_white, 1);
}
else if (player.lives == 1)
{
    draw_sprite_ext(spr_live, 0, 0 + 40, 10, 1, 1, 0, c_white, 1);
}


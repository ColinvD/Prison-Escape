if(currentState == FallingPlatformStates.Normal)
{
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
}
if(currentState == FallingPlatformStates.PlayerOn)
{
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_green, 1);
}
if(currentState == FallingPlatformStates.PlayerOff)
{
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_yellow, 1);
}
if(currentState == FallingPlatformStates.Falling)
{
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1);
}

var yScale = 1 - ((jumpForceBuildUp / jumpForce) * 0.20);
var yOffset = sprite_height * (1 - yScale);
var xScale = 1 + ((jumpForceBuildUp / jumpForce) * 0.20);
var xOffset = (sprite_width * (1 + xScale)) / 2;
rotation = rotation + (1 * moveSpeedCurrent);
draw_sprite_ext(spr_Player1, image_index, x +32, y+32, 1, 1, 0 - rotation, c_white, 1);
//draw_sprite_ext(spr_Player, image_index, x - xOffset, y, xScale, yScale, 0, c_white, 1);
//draw_sprite(spr_Player1, image_index, x,y);


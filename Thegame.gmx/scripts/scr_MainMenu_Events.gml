if(keyboard_check_pressed(vk_space))
{
    room_goto(room_1);
}
if(keyboard_check_pressed(vk_escape))
{
    game_end();
}
if(keyboard_check_pressed(vk_enter))
{
    room_goto(room_4);
}

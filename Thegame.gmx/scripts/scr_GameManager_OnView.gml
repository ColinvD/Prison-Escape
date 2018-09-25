view_enabled = true;
view_visible[0] = true;
view_xview[0] = 600;
view_yview[0] = 1000;
view_wview[0] = 1000;
view_hview[0] = 1000;

view_hborder[0] = 500;
view_vborder[0] = 500;
view_xport[0] = 0;
view_yport[0] = 0;
view_hport[0] = room_height;
view_wport[0] = room_width;

view_object[0] = instance_find(obj_Player, 0);

if(keyboard_check_pressed(vk_escape))
{
    game_end();
}
/*view_visible[1] = true;
view_xview[1] = 300;
view_yview[1] = 300;
view_wview[1] = 100;
view_hview[1] = 100;


view_xport[1] = 0;
view_yport[1] = 0;
view_hport[1] = 200;
view_wport[1] = 200;

view_object[1] = instance_find(obj_Player, 0);*/

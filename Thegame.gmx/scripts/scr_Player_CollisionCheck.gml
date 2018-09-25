var platformAmount = instance_number(obj_Platform);
var platform = noone;
var fallPlatformAmount = instance_number(obj_FallingPlatform);

jump = true;

//-----------------------------CHECK PLATFORM-------------------------------------

for (var i = 0; i < platformAmount; i++)
{
    platform = instance_find(obj_Platform, i);
    
    if
    (
        bbox_top <= platform.bbox_bottom &&
        bbox_bottom >= platform.bbox_top &&
        bbox_right >= platform.bbox_left &&
        bbox_left <= platform.bbox_right
    )
    {
        if (bbox_bottom - (y - yPrevious) <= platform.bbox_top)
        {
            //from top:
            y = platform.bbox_top - sprite_height;
            jumpForceCurrent = 0;
            jump = false;
        }
        else if(bbox_top - (y - yPrevious) >= platform.bbox_bottom)
        {
            //from bottom:
            y = platform.bbox_bottom;
            jumpForceCurrent = 0;
        }
        else if(bbox_left - (x - xPrevious) >= platform.bbox_right)
        {
            //from right:
            x = platform.bbox_right;
            moveSpeedCurrent = 0;
        }
        else if(bbox_right - (x - xPrevious) <= platform.bbox_left)
        {
            //from left:
            x = platform.bbox_left - sprite_width;
            moveSpeedCurrent = 0;
        }
    }
}

//-------------------------------------------CHECK FALLPLATFORMS---------------------------

for (var i = 0; i < fallPlatformAmount; i++)
{
    platform = instance_find(obj_FallingPlatform, i);
    
    if
    (
        bbox_top <= platform.bbox_bottom &&
        bbox_bottom >= platform.bbox_top &&
        bbox_right >= platform.bbox_left &&
        bbox_left <= platform.bbox_right
    )
    {
        if (bbox_bottom - (y - yPrevious) <= platform.bbox_top)
        {
            //from top:
            y = platform.bbox_top - sprite_height;
            jumpForceCurrent = 0;
            jump = false;
        }
        else if(bbox_top - (y - yPrevious) >= platform.bbox_bottom)
        {
            //from bottom:
            y = platform.bbox_bottom;
            jumpForceCurrent = 0;
        }
        else if(bbox_left - (x - xPrevious) >= platform.bbox_right)
        {
            //from right:
            x = platform.bbox_right;
            moveSpeedCurrent = 0;
        }
        else if(bbox_right - (x - xPrevious) <= platform.bbox_left)
        {
            //from left:
            x = platform.bbox_left - sprite_width;
            moveSpeedCurrent = 0;
        }
    }
}

//-------------------------------CHECK ROOM WIDTH/HEIGHT/DIE------------------------------

if (x > room_width){
    room_goto(room_3);
}
if (y > room_height || collision_circle(x,y,32,obj_Fire,false,true)){
    if(lastCheckpoint == 0)
    {   
        x = 96;
        y = 3456;
        moveSpeed = 0.5;
        moveSpeedMax = 10;
    }
    else
    {
        x = lastCheckpoint.x;
        y = lastCheckpoint.y;
    }
    lives -= 1;
}

if (lives <= 0)
{
    room_goto(room_2);
}
// ------------------------- CHECK POINTS ----------------------------------


if(counterSpeed < room_speed * 3)
{
    counterSpeed++;
}
    
    
var idcheckpoint = noone;
    
idcheckpoint = collision_circle(x,y,32,obj_Pickup_Speed,false,true);
if (idcheckpoint){
    moveSpeed = 1;
    moveSpeedMax = 15;
    lastCheckpoint = idcheckpoint;
    if(counterSpeed >= room_speed *3)
    {
        audio_play_sound(speed_sound, 1, false);
        counterSpeed = 0;
    }
}
if(counterSlow < room_speed * 3)
    {
        counterSlow++;
    }

idcheckpoint = collision_circle(x,y,32,obj_Pickup_Slow,false,true);
if (idcheckpoint){
    moveSpeed = 0.5;
    moveSpeedMax = 10;
    lastCheckpoint = idcheckpoint;
    if(counterSlow >= room_speed * 3)
    {
        audio_play_sound(slow_sound, 1, false);
        counterSlow = 0;
    }
}

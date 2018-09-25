x += moveSpeedCurrent * walkDirectionCurrent;

if (bbox_left <= platform.bbox_left)
{
    //linker hoek bereikt, ga naar rechts:
    x = platform.bbox_left;
    walkDirectionCurrent = WalkDirection.Right;
}
else if(bbox_right >= platform.bbox_right)
{
    x = platform.bbox_right - sprite_width;
    walkDirectionCurrent = WalkDirection.Left;
}

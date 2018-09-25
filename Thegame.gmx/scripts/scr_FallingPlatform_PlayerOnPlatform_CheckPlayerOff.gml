//checkt of player van platform is
if(!(player.bbox_bottom >= bbox_top-2 && player.bbox_top <= bbox_bottom && player.bbox_right >= bbox_left-1 && player.bbox_left <= bbox_right))
{
        newState = FallingPlatformStates.PlayerOff;
        //show_message("KLOPT DIT?");
}
else
{
    //tijd loopt als de speler er op staat
    if(currentTimeOn < 100)
    {
            currentTimeOn++;
            //show_message("currentTime: " + string(currentTime));
    }
    
    //na bepaalde tijd(3 sec.) gaat door naar fase falling
    if(currentTimeOn >= 100)
    {
            newState = FallingPlatformStates.Falling;
            //show_message("YES");
    }
}

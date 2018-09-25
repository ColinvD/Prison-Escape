if(player.bbox_bottom >= bbox_top-2 && player.bbox_top <= bbox_bottom && player.bbox_right >= bbox_left-1 && player.bbox_left <= bbox_right)
{
    newState = FallingPlatformStates.PlayerOn;
    currentTimeOff = 0;
}
else
{
    if(currentTimeOff < 200)
    {
            currentTimeOff++;
            //show_message("currentTimeOff: " + string(currentTimeOff));
    }
    
    //na bepaalde tijd(3 sec.) gaat door naar fase falling
    if(currentTimeOff >= 200)
    {
            newState = FallingPlatformStates.Normal;
            //show_message("YES");
    }
}

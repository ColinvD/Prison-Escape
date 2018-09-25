if(player.bbox_bottom >= bbox_top-2 && player.bbox_top <= bbox_bottom && player.bbox_right >= bbox_left-1 && player.bbox_left <= bbox_right)
{
    //show_message("gaat dit goed?");
    newState = FallingPlatformStates.PlayerOn;
}

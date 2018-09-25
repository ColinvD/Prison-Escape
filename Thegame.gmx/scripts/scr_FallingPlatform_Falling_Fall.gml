y += fallSpeed;

if(bbox_bottom >= platform || bbox_bottom >= room_height)
{
    if(respawnTime < 150)
    {
        respawnTime++;
    }
    
    if(respawnTime >= 150)
    {
        newState = FallingPlatformStates.Normal;
    }
}

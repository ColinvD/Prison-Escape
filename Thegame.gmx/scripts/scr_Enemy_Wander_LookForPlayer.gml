if(wanderLookIntervalCurrent < wanderLookInterval)
{
    wanderLookIntervalCurrent++;
}
else
{
    // controleer per x-aantal frames of de speler in zicht is:
    //controleer eerst of de speler binnen de hooghte van het vizier valt:
    if(( player.bbox_bottom >= (bbox_top - wanderLookHeight) && player.bbox_top <=(bbox_top + wanderLookHeight)))
    {
        // controleer of de speler binnen de reikwijdte van het visier valt:
        if( sign( wanderLookWidth - abs(player.x - x)) >= 0 )
        {
            // controleer of de speler de speler dezelfde kant staat als waarin het object naartoe kijkt:
            if( (player.x - x) * walkDirectionCurrent >= 0 )
            {
                // de speler is gezien!!! D: --- paniek
                newState = EnemyStates.Panic;
            }
        }
    }
    
    wanderLookIntervalCurrent = 0;
}

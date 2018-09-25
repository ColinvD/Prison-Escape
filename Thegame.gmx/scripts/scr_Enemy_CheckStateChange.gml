if (newState != currentState)
{
    
    switch (newState)
    {
        
        case EnemyStates.Wander:
        
            // Bepaal de vrariabele waarden voor "wander":
            moveSpeedCurrent = wanderMoveSpeed;
        
        break;
        
        case EnemyStates.Alert:
            
            // Bepaal de vrariabele waarden voor "alert":
            
        break;
        
        case EnemyStates.Panic:
            
            // Bepaal de vrariabele waarden voor "panic":
            moveSpeedCurrent = panicMoveSpeed;
            
        break;
        
    }
    
    currentState = newState;
    
}

scr_Enemy_CheckStateChange();

switch (currentState)
{
    
    case EnemyStates.Wander:
        
        scr_Enemy_Wander_Walk();
        scr_Enemy_Wander_LookForPlayer();
        
    break;
    
    case EnemyStates.Alert:
        
        
        
    break;
    
    case EnemyStates.Panic:
        
        scr_Enemy_Wander_Walk();
        
    break;
}

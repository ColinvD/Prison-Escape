enum EnemyStates
{
    None = -1,
    Wander = 1,
    Alert = 2,
    Panic = 3
}

enum WalkDirection
{
    Left = -1,
    Right = 1
}

currentState = EnemyStates.None;
newState = EnemyStates.Wander;

moveSpeedCurrent = 0;
walkDirectionCurrent = choose (WalkDirection.Left, WalkDirection.Right);

platform = scr_GetClosestPlatform(id);
player = instance_find(obj_Player, 0);


// variabelen "wander":
wanderMoveSpeed = 4;
wanderLookInterval = round(room_speed * random_range(0.45, 0.55));
wanderLookIntervalCurrent = 0;
wanderLookHeight = 50;
wanderLookWidth = 300;

// variabelen "panic":
panicMoveSpeed = 8;

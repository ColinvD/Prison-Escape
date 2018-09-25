enum FallingPlatformStates
{
    None = -1,
    Normal = 1,
    PlayerOn = 2,
    PlayerOff = 3,
    Falling = 4
}

currentState = FallingPlatformStates.None;
newState = FallingPlatformStates.Normal;

platform = scr_GetClosestPlatformUnder(id);
player = instance_find(obj_Player, 0);

//variabelen "Normal":
Starty = y;
//variabelen "PlayerOn":
currentTimeOn = 0;
//variabelen "PlayerOff":
currentTimeOff = 0;
//variabelen "Falling":
fallSpeed = 10;
respawnTime = 0;

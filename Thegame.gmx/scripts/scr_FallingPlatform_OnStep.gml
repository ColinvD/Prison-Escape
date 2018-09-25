scr_FallingPlatform_CheckStateChange();
switch (currentState)
{
    case FallingPlatformStates.Normal:
        scr_FallingPlatform_Normal_StartPosition();
        scr_FallingPlatform_Normal_CheckPlayerOn();
    break;
    
    case FallingPlatformStates.PlayerOn:
        scr_FallingPlatform_PlayerOnPlatform_CheckPlayerOff();
    break;
    
    case FallingPlatformStates.PlayerOff:
        scr_FallingPlatform_PlayerFromPlatform_CheckPlayerOn();
    break;
    
    case FallingPlatformStates.Falling:
        scr_FallingPlatform_Falling_Fall();
    break;
}

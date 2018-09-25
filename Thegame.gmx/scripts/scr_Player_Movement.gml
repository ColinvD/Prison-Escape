//Movement
if(keyboard_check(ord('A')) || keyboard_check(vk_left))
{
    moveSpeedCurrent -= moveSpeed;
    if (moveSpeedCurrent <= -moveSpeedMax){
        moveSpeedCurrent = -moveSpeedMax;
    }
}
else if (keyboard_check(ord('D')) || keyboard_check(vk_right))
{
    moveSpeedCurrent += moveSpeed;
    if (moveSpeedCurrent >= moveSpeedMax){
        moveSpeedCurrent = moveSpeedMax;
    }
}
else
{
    moveSpeedCurrent *= moveSpeedDecFactor;
    if(moveSpeedCurrent >= -moveSpeed && moveSpeedCurrent <= moveSpeed){
        moveSpeedCurrent = 0;
    }
}


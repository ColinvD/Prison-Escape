//Jumping
if (!jump)
{
    if (keyboard_check(vk_space) || keyboard_check(ord('W')) || keyboard_check(vk_up))
    {
        jumpForceBuildUp += jumpForceCharge;
        if(jumpForceBuildUp >= jumpForce)
        {
            jumpForceBuildUp = jumpForce;
        }
        //jumpForceCurrent -= jumpForce;
        //jump = true;
    }
    else if(keyboard_check_released(vk_space) || keyboard_check_released(ord("W")) || keyboard_check_released(vk_up))
    {
        if(jumpForceBuildUp <= jumpForceMinimum)
        {
            jumpForceBuildUp = jumpForceMinimum;
        }
        jumpForceCurrent -= jumpForceBuildUp;
        jumpForceBuildUp = 0;
    }
}
else
{
    jumpForceBuildUp = 0;
}


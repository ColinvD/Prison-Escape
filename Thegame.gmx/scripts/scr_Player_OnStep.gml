xPrevious = x;
yPrevious = y;

scr_Player_Gravity();
scr_Player_Jumping();
scr_Player_Movement();

x += moveSpeedCurrent;
y += jumpForceCurrent;

scr_Player_CollisionCheck();

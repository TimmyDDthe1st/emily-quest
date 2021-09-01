playerCount = 0; //Set this to 0
hsp = 0;
vsp = 0;
walksp = 2;
coyoteCounter = 0;
coyoteMax = 10;
onGround = false;
sprinting = false;
playerSpeed = 1;

if(gamepad_is_connected(playerCount)){
	gamepad_set_axis_deadzone(playerCount, 0.20);
} 
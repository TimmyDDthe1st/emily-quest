if(room == Room1){
	playerMovement(gamepad_stick_value_x, button1);
	animateCharacter(sEmilyWalk, sEmilyIdle, sEmilyJump, gamepad_stick_value_x, 0);
} else {
	onGround = true;
	playerMovementTopDown(gamepad_stick_value_x, gamepad_stick_value_y, button1, oEmily);
	animateCharacter(sEmilyWalk, sEmilyIdle, sEmilyJump, gamepad_axis_value(playerCount, gp_axislh), gamepad_axis_value(playerCount, gp_axislv));
}

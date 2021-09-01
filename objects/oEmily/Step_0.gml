if(room == Room1){
	playerMovement(gamepad_axis_value(playerCount, gp_axislh), gamepad_button_check_pressed(playerCount, gp_face1));
	animateCharacter(sEmilyWalk, sEmilyIdle, sEmilyJump, gamepad_axis_value(playerCount, gp_axislh), 0);
} else {
	onGround = true;
	playerMovementTopDown(gamepad_axis_value(playerCount, gp_axislh), gamepad_axis_value(playerCount, gp_axislv), gamepad_button_check_pressed(playerCount, gp_face2), oEmily);
	animateCharacter(sEmilyWalk, sEmilyIdle, sEmilyJump, gamepad_axis_value(playerCount, gp_axislh), gamepad_axis_value(playerCount, gp_axislv));
}

if(global.hasEngagementRing){
	if(gamepad_button_check_pressed(playerCount, gp_face4)){
		room_goto_next();
		global.hasEngagementRing = false;
	}
}

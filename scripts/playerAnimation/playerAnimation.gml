function animateCharacter(spriteWalk, spriteIdle, spriteJump, gamePadX, gamePadY){
	if (!onGround) {
		sprite_index = spriteJump;
	} else {
		if(hsp > 0.20 && onGround || hsp < -0.20 && onGround){
			sprite_index = spriteWalk;
		} else {
			sprite_index = spriteIdle;
		}
		
		if(gamePadX > 0.20 || gamePadX < -0.20 || gamePadY > 0.20 || gamePadY < -0.20){
			sprite_index = spriteWalk;
		} else {
			sprite_index = spriteIdle;
		}
	}
}

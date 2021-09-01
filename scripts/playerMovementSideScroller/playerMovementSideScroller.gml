function playerMovement(gamePadXAxis, keyJump){
	var move = gamePadXAxis;
	var deadZone = 0.20;

	// Apply Horizontal Speed based on Move value
	hsp = move * walksp;

	// Apply Gravity
	vsp = vsp + global.grv;
	
	// Jump
	if(onGround && keyJump){
		vsp = -7;
		audio_play_sound(jump, 1, 0);
	}
	
	// Sprite Flip
	if(hsp != 0) {
		image_xscale = sign(move);
	}

	// Coyote Timer
	if(!onGround){
		coyoteCounter --;
		if(coyoteCounter >= 0){
			if(keyJump){		
				vsp = -7;
			}
		}
	} else {
		coyoteCounter = coyoteMax;
	}    

	//Horizontal Collision
	if(place_meeting(x + hsp, y, oGround))
	{
	    while(!place_meeting(x + sign(hsp), y, oGround))
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}

	if(gamePadXAxis > deadZone || gamePadXAxis < -deadZone){
		x = x + hsp;
	}

	//Vertical Collision
	if(place_meeting(x, y + vsp, oGround))
	{
	    while(!place_meeting(x, y + sign(vsp), oGround))
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}

	y = y + vsp;


	if(place_meeting(x, y + 1, oGround)){
		onGround = true;
	} else { 
		onGround = false;
	}
}




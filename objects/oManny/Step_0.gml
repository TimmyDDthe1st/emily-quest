if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
		oPressX.x = x;
	oPressX.y = y-10;
	// TODO show press x button for all collectibles
	if(gamepad_button_check_released(0, gp_face3) || gamepad_button_check_released(1, gp_face3)){
		audio_play_sound(click, 1, 0);
		myDialogue = CreateDialogue();
		//AddDialogue(myDialogue, "After going to Dogfest...");
		//AddDialogue(myDialogue, "We got our first dog together...");
		//AddDialogue(myDialogue, "Our beautiful baby Chihuahua, Manny.");
		AddDialogue(myDialogue, "Bork, bork, bork...");
		AddDialogue(myDialogue, "Bork, bork, bork, bork bork...");
		AddDialogue(myDialogue, "Bork, bork.");
		PlayDialogue(myDialogue);
	}
}


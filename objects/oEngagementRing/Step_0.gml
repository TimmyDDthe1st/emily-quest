if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
			oPressX.x = x;
	oPressX.y = y-10;
	// TODO show press x button for all collectibles
	if(gamepad_button_check_released(0, gp_face3) || gamepad_button_check_released(1, gp_face3)){
				audio_play_sound(click, 1, 0);
		myDialogue = CreateDialogue();
		AddDialogue(myDialogue, "Now we've been engaged for a while...");
		AddDialogue(myDialogue, "And it's onto the next chapter of our lives together...");
		AddDialogue(myDialogue, "We've had the best times so far, and there are more to have in the future...");
		AddDialogue(myDialogue, "Now it's time to tie the knott...");
		PlayDialogue(myDialogue);
	}
}

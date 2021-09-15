if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
		oPressX.x = x;
	oPressX.y = y-10;
	// TODO show press x button for all collectibles
	if(button2){
		audio_play_sound(click, 1, 0);
		myDialogue = CreateDialogue();
		AddDialogue(myDialogue, "You came to the room I was staying in...");
		AddDialogue(myDialogue, "It was horrible, but we still made it work...");
		AddDialogue(myDialogue, "We watched Up, I cried and I said I love you for the first time.");
		AddDialogue(myDialogue, "Keep going, there's more to find!");
		PlayDialogue(myDialogue);
	}
}

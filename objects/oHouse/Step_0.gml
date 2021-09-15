if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
		oPressX.x = x;
	oPressX.y = y-10;
	// TODO show press x button for all collectibles
	if(button2){
		audio_play_sound(click, 1, 0);
		myDialogue = CreateDialogue();
		AddDialogue(myDialogue, "I had the crazy idea to buy a house...");
		AddDialogue(myDialogue, "We looked at some, but decided to go with a new build...");
		AddDialogue(myDialogue, "We eventually moved into our first owned house together...");
		AddDialogue(myDialogue, "And I look forward to you coming home every day.");
		AddDialogue(myDialogue, "Keep going, there's more to find!");
		PlayDialogue(myDialogue);
	}
}

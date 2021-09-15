if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
		oPressX.x = x;
	oPressX.y = y-10;
	// TODO show press x button for all collectibles
	if(button2){
		audio_play_sound(click, 1, 0);
		myDialogue = CreateDialogue();
		AddDialogue(myDialogue, "I finally moved into a nice flat...");
		AddDialogue(myDialogue, "You slowly moved your things in and we started cooking together...");
		AddDialogue(myDialogue, "We went on our first holiday together, to Moss, Norway...");
		AddDialogue(myDialogue, "Your first trip outside of the UK.");
		AddDialogue(myDialogue, "Keep going, there's more to find!");
		PlayDialogue(myDialogue);
	}
}

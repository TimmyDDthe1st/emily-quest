if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
		oPressX.x = x;
	oPressX.y = y-10;

	if(button2){
		audio_play_sound(click, 1, 0);
		myDialogue = CreateDialogue();
		AddDialogue(myDialogue, "We met on eHamarony...");
		AddDialogue(myDialogue, "I asked the best questions about apocalypse survival...");
		AddDialogue(myDialogue, "We met up at the Trafford Centre and gamed the night away...");
		AddDialogue(myDialogue, "That's when I knew that you were the one for me.");
		AddDialogue(myDialogue, "Keep going, there's more to find!");
		PlayDialogue(myDialogue);
	}
}


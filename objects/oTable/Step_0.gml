if(distance_to_object(oTim) < 10 || distance_to_object(oEmily) < 10){
	oPressX.x = x + 50;
	oPressX.y = y;
	if(button2){
		audio_play_sound(click, 1000, false);
		myDialogue = CreateDialogue();
		AddDialogue(myDialogue, "You saved our wedding day from the ZOMBIE INVASION!");
		AddDialogue(myDialogue, "Happy Birthday Bubs, I hope you liked this...");
		AddDialogue(myDialogue, "I hope you enjoy what I have planned for you today...");
		AddDialogue(myDialogue, "And happy 30th birthday, you've made it...");
		AddDialogue(myDialogue, "You're really 30...");
		AddDialogue(myDialogue, "No really, you're 30 now...");
		AddDialogue(myDialogue, "Which is fine, because no one likes you when you're 23...");
		AddDialogue(myDialogue, "But you're actually 30...");
		AddDialogue(myDialogue, "HAPPY BIRTHDAY!");
		PlayDialogue(myDialogue);
	}
}

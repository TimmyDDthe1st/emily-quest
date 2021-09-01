function PlayDialogue(part){
	if(instance_exists(oDialogueSystem)){
		show_debug_message("More than 1 exists!");
	} else {
		with(instance_create_depth(0, 0, 0, oDialogueSystem)){
			dialogue = part;
			event_user(0);
		}
	}
}
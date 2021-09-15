value = ds_queue_dequeue(dialogue);

if(is_undefined(value)){
	instance_destroy();
	if(global.hasEngagementRing && global.level == 1){
		global.level ++;
		room_goto_next();
	}
}

current_message = value;
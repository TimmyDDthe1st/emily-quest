value = ds_queue_dequeue(dialogue);

if(is_undefined(value)){
	instance_destroy();
}

current_message = value;
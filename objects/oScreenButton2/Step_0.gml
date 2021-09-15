mousePosX = device_mouse_x_to_gui(0);
mousePosY = device_mouse_y_to_gui(0);

for(var i=0; i<2; i++) {
	if device_mouse_check_button_pressed(i, mb_left){ 
		if(position_meeting(mousePosX, mousePosY, id)){
			button2 = true;
		}
	} else {
		button2 = false;
	}
}
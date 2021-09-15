mousePosX = device_mouse_x_to_gui(0);
mousePosY = device_mouse_y_to_gui(0);

if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(mousePosX, mousePosY, id)){
		button2 = true;
	}
} else {
	button2 = false;
}
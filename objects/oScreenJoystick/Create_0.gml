xx = 0; //The X anchor point for the stick (We will reset this in STEP)
yy = 0; //The Y anchor point for the stick (We will reset this in STEP)
max_dist = 75; //The distance of the range of circular motion on the stick
was_clicked = true; //A simple variable where you store input
globalvar gamepad_stick_value_x; //The final X-axis output
gamepad_stick_value_x = 0;
globalvar gamepad_stick_value_y; //The final Y-axis output
gamepad_stick_value_y = 0;
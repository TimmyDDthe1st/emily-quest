draw_sprite(sJoyStickBase,0,xx,yy); //Draw the base to the anchor point
draw_sprite(sJoyStickStick,0,x,y); //Draw the stick to the position
draw_text(10,10,gamepad_stick_value_x); //Draw the x output for testing purposes
draw_text(10,20,gamepad_stick_value_y); //Draw the y output for testing purposes
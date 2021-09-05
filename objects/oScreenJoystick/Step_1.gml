dist = point_distance(xx,yy,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)); //Get the distance from the mouse to the anchor
xx = view_wport[0]/5 ; //The X anchor point for the stick
yy = view_hport[0]/1.25; //The Y anchor point for the stick
if (device_mouse_check_button(0,mb_left)) //Test for a click
{
    if (dist < max_dist) //Test if the click happened inside the range of the stick
    was_clicked = true; //Set input to true
}
else //Click released
{
    was_clicked = false; //Set input to false
}
if (was_clicked == true) //Test input
{
    if (dist < max_dist) //If the mouse is inside the max distance assign it to the mouse position
    {
    x = device_mouse_x_to_gui(0);
    y = device_mouse_y_to_gui(0);
    }
    else //If the mouse is outside the max distance assign the stick position pointing to the mouse but to the max distance from the center of the axis
    {
    x = xx + lengthdir_x(max_dist,point_direction(xx,yy,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)));
    y = yy + lengthdir_y(max_dist,point_direction(xx,yy,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)));
    }
}
else //If no input set the stick's position to the anchor point
{
    x = xx;
    y = yy;
}
//Output the position the same way Gamemaker outputs a joystick's input
gamepad_stick_value_x = -1*(xx - x)/(max_dist); //This gives you the hor position of the stick from -1 to 1;
gamepad_stick_value_y = -1*(yy - y)/(max_dist); //This gives you the ver position of the stick from -1 to 1;
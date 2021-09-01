

if(current_message == "") {

} else {
 	draw_sprite(sTextBG, image_index, viewX - 50, viewY - 50);
	draw_text_ext(viewX, viewY, current_message, 30, 200);
}
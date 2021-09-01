function particleBloodInit(){
	global.particleBlood = part_type_create();
	var particleBlood = global.particleBlood;
	
	part_type_shape(particleBlood, pt_shape_square);
	part_type_size(particleBlood, 0.01, 0.03, 0, 0);
	part_type_color2(particleBlood, c_red, c_maroon);
	part_type_speed(particleBlood, 0.5, -0.1, 0, 0);
	part_type_direction(particleBlood, 0, 180, 0, 0);
	part_type_gravity(particleBlood, 0.03, 270);
	part_type_life(particleBlood, 70, 190); 
}
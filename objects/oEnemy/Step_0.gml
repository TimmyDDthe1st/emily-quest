if(place_meeting(x, y, oOutOfBounds)){
	dirChange = true;
} else if(place_meeting(x, y, oGround)){
	dirChange = false;
}

if(!dirChange){
	x = x + 1 * moveSpeed;
	image_xscale = 1;
} else {
	x = x - 1 * moveSpeed;
	image_xscale = -1;
}


var bullet = instance_place(x, y, oBullet);

if(place_meeting(x, y, oBullet)){
	instance_destroy();
	with(bullet){
		instance_destroy();
	}
	audio_play_sound(zombieDeath, 1000, false);
	part_particles_create(global.particleSystem, x, y, global.particleBlood, 10);
	global.score++;
}

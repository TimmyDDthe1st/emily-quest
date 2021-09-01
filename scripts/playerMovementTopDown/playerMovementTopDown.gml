function playerMovementTopDown(haxis, vaxis, keyFire, playerObj) {
	var playerSpeed = 3;
	var collisionSpeed = playerSpeed + 2;
	var deadZone = 0.20;

	if(haxis > 0 + deadZone && place_free(x + collisionSpeed, y) || haxis < 0 - deadZone && place_free(x - collisionSpeed, y)) {
		x += haxis * playerSpeed;
	}

	if(vaxis > 0 + deadZone && place_free(x, y + collisionSpeed) || vaxis < 0 - deadZone && place_free(x, y - collisionSpeed)) {
		y += vaxis * playerSpeed;
	}
	
		// Sprite Flip
	if(haxis != 0) {
		image_xscale = sign(haxis);
	}

	if(room == 1){
		if(keyFire){
			var bullet = instance_create_layer(x, y, "bullets", oBullet);
			audio_play_sound(shoot, 1000, false);
			with(bullet){
				if(playerObj.image_xscale <= -1){
					bullet.direction = 180;
				} else {
					bullet.direction = 0;
				}
			}
		}
	}
	
}
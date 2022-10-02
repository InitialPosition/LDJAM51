function scr_camera_init() {
	currentBoundingBox = instance_nearest(objPlayer.x, objPlayer.y, objCameraBox);
	xx = x;
	yy = y;
	
	xMovementOffsetFactor = 30;
	
	wport = 256;
	hport = 144;
	
	camera_set_view_target(view_camera[0], objCamera);
	camera_set_view_border(view_camera[0], wport / 2, hport / 2);
}

function scr_camera_update() {
	if instance_exists(objPlayer) {		
		xx = objPlayer.x + (objPlayer.xx * xMovementOffsetFactor);
		yy = objPlayer.y;
	} else {
		xx = objGameManager.respawnX;
		yy = objGameManager.respawnY;
		
		currentBoundingBox = objGameManager.respawnCamBox;
	}
	
	xx = clamp(xx, currentBoundingBox.x + (wport / 2), currentBoundingBox.x + currentBoundingBox.sprite_width - (wport / 2));
	yy = clamp(yy, currentBoundingBox.y + (hport / 2), currentBoundingBox.y + currentBoundingBox.sprite_height - (hport / 2));
	
	x = lerp(x, xx, 0.05);
	y = lerp(y, yy, 0.1);
}

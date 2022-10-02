/// @description Destroy player and start end cutscene

if yy > 0 {
	other.image_index = 1;
	
	objGameManager.respawnX = other.x;
	objGameManager.respawnY = other.y;
	objGameManager.respawnCamBox = objCamera.currentBoundingBox;
	
	var playerOutro = instance_create_layer(x, y, "Instances_FG", objPlayerOutro);
	playerOutro.y = other.y;
	if sprite_index == sprPlayerFallR || sprite_index == sprPlayerIdleR || sprite_index == sprPlayerJumpR || sprite_index == sprPlayerRunR {
		playerOutro.sprite_index = sprPlayerIdleR;
	} else {
		playerOutro.sprite_index = sprPlayerIdleL;
	}
	
	with objTimeManager {
		instance_destroy();
	}
	
	audio_play_sound(sndWin, 1, 0);
	
	instance_destroy();
}

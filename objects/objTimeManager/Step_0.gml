/// @description 

currentCounter--;
index = 10 - floor(currentCounter / 60);

if index == 7 {
	if !audio_is_playing(sndCountdown) {
		audio_play_sound(sndCountdown, 1 , 0);
	}
}

if index == 10 {
	if !audio_is_playing(sndWind) {
		audio_play_sound(sndWind, 1, 0);
	}
	if instance_exists(objPlayer) {
		if !hasFreedPlayer {
			hasFreedPlayer = true;
			objPlayer.jumping = false;
			objPlayer.yy = -0.1;
			objPlayer.onGround = false;
			
			if objPlayer.sprite_index == sprPlayerIdleL {
				objPlayer.sprite_index = sprPlayerJumpL;
			} else {
				objPlayer.sprite_index = sprPlayerJumpR;
			}
		}
		objPlayer.gravityStrength = -0.08;
	}
	
	part_emitter_burst(objPartFGWindUp.partSys, objPartFGWindUp.partEmit, objPartFGWindUp.part, 50);
} else {
	hasFreedPlayer = false;
	if instance_exists(objPlayer) {
		objPlayer.gravityStrength = 0.3;
	}
}

if currentCounter == 0 {
	currentCounter = counterStart;
}

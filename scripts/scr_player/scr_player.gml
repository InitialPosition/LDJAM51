function scr_player_init() {
	xx = 1;
	yy = 0;
	maxHSpeed = 2;
	speedAcceleration = 0.3;
	stopFriction = 2;
	jumpForce = 5;
	jumpPrecisionMod = 1.2;
	instantStopThreshold = 0.2;
	onGround = false;
	gravityStrength = 0.3;
	terminalVelocity = 6;
	terminalVelocityUp = -5;
	jumping = false;
	jumpBuffer = 0;
	jumpBufferPre = 6;
	notification = false;
	
	if !instance_exists(objGameManager) {
		instance_create_layer(0, 0, "Instances_1", objGameManager);
	}
}

function scr_player_update() {
	scr_update_movement_vectors();
	scr_player_check_collisions();
	
	notification = place_meeting(x, y, objInteractable);
	
	if notification {
		if keyboard_check_pressed(global.keyInteract) {
			var interactable = instance_nearest(x, y, objInteractable);
			interactable.alarm[0] = 1;
		}
	}
	
	x += xx;
	y += yy;
}

function scr_update_movement_vectors() {
	if keyboard_check(global.keyLeft) {
		if xx > -maxHSpeed {
			if xx > 0 {
				xx /= stopFriction;
				if abs(xx) < instantStopThreshold {
					xx = 0;
				}
			} else {
				xx -= speedAcceleration;
			}
		} else {
			xx = -maxHSpeed;
		}
		
		if onGround {
			sprite_index = sprPlayerRunL;
		} else {
			if yy < 0 {
				sprite_index = sprPlayerJumpL;
			} else {
				sprite_index = sprPlayerFallL;
			}
		}
	}
	if keyboard_check(global.keyRight) {
		if xx < maxHSpeed {
				if xx < 0 {
				xx /= stopFriction;
				if abs(xx) < instantStopThreshold {
					xx = 0;
				}
			} else {
				xx += speedAcceleration;
			}
		} else {
			xx = maxHSpeed;
		}
		
		if onGround {
			sprite_index = sprPlayerRunR;
		} else {
			if yy < 0 {
				sprite_index = sprPlayerJumpR;
			} else {
				sprite_index = sprPlayerFallR;
			}
		}
	}
	
	if !keyboard_check(global.keyLeft) && !keyboard_check(global.keyRight) || keyboard_check(global.keyLeft) && keyboard_check(global.keyRight) {
		xx /= stopFriction;
		
		if onGround {
			if sprite_index == sprPlayerRunR || sprite_index == sprPlayerJumpR || sprite_index == sprPlayerFallR {
				sprite_index = sprPlayerIdleR;
			}
			if sprite_index == sprPlayerRunL || sprite_index == sprPlayerJumpL || sprite_index == sprPlayerFallL {
				sprite_index = sprPlayerIdleL;
			}
		}
	}
	
	if keyboard_check_pressed(global.keyJump) {
		if onGround {
			onGround = false;
			jumping = true;
			yy = -jumpForce;
			audio_play_sound(sndJump, 1, 0);
		}
		else if place_meeting(x, y, objGreenOrb) {
			var orb = instance_nearest(x, y, objGreenOrb);
			if orb.active {
				orb.active = false;
				orb.image_index = 1;
				orb.alarm[0] = orb.reactivationTime;
				part_emitter_stream(orb.partSys, orb.partEmit, orb.part, 0);
				
				yy = -jumpForce;
				jumping = true;
				audio_play_sound(sndJumpOrb, 1, 0);
			}
		}
		else {
			jumpBuffer = jumpBufferPre;
		}
	}
	
	if jumpBuffer > 0 {
		jumpBuffer--;
		
		if onGround {
			if !jumping {
				jumpBuffer = 0;
				onGround = false;
				jumping = true;
				yy = -jumpForce;
				audio_play_sound(sndJump, 1, 0);
			}
		}
	}
	
	
	if jumping {
		if !keyboard_check(global.keyJump) {
			if yy < 0 {
				yy /= jumpPrecisionMod;
			}
		}
		
		if yy < 0 {
			if sprite_index == sprPlayerIdleR {
				sprite_index = sprPlayerJumpR;
			}
			if sprite_index == sprPlayerIdleL{
				sprite_index = sprPlayerJumpL;
			}
		} else {
			if sprite_index == sprPlayerJumpR {
				sprite_index = sprPlayerFallR;
			}
			if sprite_index == sprPlayerJumpL{
				sprite_index = sprPlayerFallL;
			}
		}
	}
	
	if !onGround {
		yy += gravityStrength;
	}
	
	if yy > terminalVelocity {
		yy = terminalVelocity;
	}
	
	// only do this in the wind level
	if !jumping && room == rmLevel2 {
		if yy < terminalVelocityUp {
			yy = terminalVelocityUp;
		}
	}
}

function scr_player_check_collisions() {
	if place_meeting(x + xx, y, objWall) {
		if xx > 0 {
			move_contact_solid(0, xx);
		}
		else if xx < 0 {
			move_contact_solid(180, abs(xx));
		}
		
		xx = 0;
	}
	
	if place_meeting(x, y + yy, objWall) {
		if yy > 0 {
			y = round(y);
			move_contact_solid(270, yy);
			jumping = false;
		}
		if yy < 0 {
			move_contact_solid(90, abs(yy));
		}
		
		yy = 0;
	}
	
	onGround = place_meeting(x, y + 1, objWall);
}

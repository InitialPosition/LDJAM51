/// @description Activate lever

if active {
	objGameManager.triggerID = triggerID;
	active = false;
	
	if image_index == 0 {
		image_index = 1;
	} else {
		image_index = 0;
	}
	
	used = image_index;
	
	alarm[1] = 10;
	audio_play_sound(sndLever, 1, 0);
	
	with objInteractableReceiver {
		if triggeredID == objGameManager.triggerID {
			alarm[0] = 1;
		}
	}
}

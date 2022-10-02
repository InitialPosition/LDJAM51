/// @description Save game
/**
with objSavePoint {
	active = false;
	image_index = 0;
	part_emitter_stream(partSys, partEmit, part, -30);
}
**/

if !other.active {
	audio_play_sound(sndSave, 1, 0);
	other.active = true;
	other.image_index = 1;
	part_emitter_stream(other.partSys, other.partEmit, other.part, -5);
	
	objGameManager.respawnX = other.x;
	objGameManager.respawnY = other.y;
	objGameManager.respawnCamBox = objCamera.currentBoundingBox;
}

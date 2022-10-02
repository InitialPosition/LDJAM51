/// @description Respawn

with objGreenOrb {
	alarm[0] = -1;
	active = true;
	image_index = 0;
	part_emitter_stream(partSys, partEmit, part, -5);
}

with objTimeManager {
	currentCounter = counterStart;
}

instance_create_layer(objGameManager.respawnX, objGameManager.respawnY, "Instances_FG", objPlayer);

layer_set_visible(deathLayer1, false);
layer_set_visible(deathLayer2, false);
layer_set_visible(deathLayer3, false);

with objInteractable {
	alarm[2] = 1;
}
with objInteractableReceiver {
	alarm[2] = 1;
}

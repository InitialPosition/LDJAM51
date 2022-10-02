/// @description Kill player

instance_create_layer(0, 0, "Instances_1", objDeathManager);
if !audio_is_playing(sndDeath) {
	audio_play_sound(sndDeath, 1, 0);
}
instance_destroy();

/// @description Start walking

enabled = true;
xx = 2;
yy = -4;
sprite_index = sprPlayerJumpR;
audio_play_sound(sndJump, 1, 0);

instance_create_layer(0, 0, "Instances_FG", objFade)

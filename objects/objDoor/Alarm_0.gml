/// @description Toggle block

if state {
	instance_deactivate_object(block);
	state = false;
	image_index = 1;
} else {
	instance_activate_object(block);
	state = true;
	image_index = 0;
}

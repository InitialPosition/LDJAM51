/// @description Activate collision if player is above floor

if instance_exists(objPlayer) {
	if objPlayer.y < y - 12 {
		instance_activate_object(collisionBlock);
	} else if objPlayer.y > y - 11 {
		instance_deactivate_object(collisionBlock);
	}
}

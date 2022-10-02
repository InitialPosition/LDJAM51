function scr_init() {
	global.keyLeft = vk_left;
	global.keyRight = vk_right;
	global.keyJump = vk_space;
	global.keyInteract = ord("E");
	
	room_goto(rmLevel1);
}

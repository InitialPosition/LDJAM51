function scr_get_part_jumporb() {
	part = part_type_create();
	part_type_alpha2(part, 1, 0);
	part_type_life(part, 30, 60);
	part_type_color_hsv(part, 120, 140, 0, 127, 255, 255);
	part_type_direction(part, 0, 360, 10, 0);
	part_type_speed(part, 0.5, 1, 0, 0);
	return part;
}

function scr_get_part_jumppad() {
	part = part_type_create();
	part_type_alpha2(part, 1, 0);
	part_type_life(part, 10, 30);
	part_type_color_hsv(part, 120, 140, 0, 127, 255, 255);
	part_type_direction(part, 90, 90, 0, 0);
	part_type_speed(part, 0.5, 1, 0, 0);
	return part;
}

function scr_get_part_save() {
	part = part_type_create();
	part_type_alpha3(part, 0, 1, 0);
	part_type_life(part, 60, 90);
	part_type_color_hsv(part, 120, 140, 0, 127, 255, 255);
	part_type_direction(part, 0, 360, 5, 2);
	part_type_speed(part, 0.2, 0.5, 0, 0);
	return part;
}

function scr_get_part_fgparticles() {
	part = part_type_create();
	part_type_alpha3(part, 0, 1, 0);
	part_type_life(part, 120, 180);
	part_type_color_hsv(part, 120, 140, 0, 0, 255, 255);
	part_type_direction(part, 180, 200, 0, 0);
	part_type_speed(part, 0.5, 1, 0, 0);
	return part;
}

function scr_get_part_fgparticles_wind() {
	part = part_type_create();
	part_type_alpha3(part, 0, 1, 0);
	part_type_life(part, 120, 180);
	part_type_color_hsv(part, 120, 140, 0, 0, 255, 255);
	part_type_direction(part, 90, 90, 0, 10);
	part_type_speed(part, 3, 5, 0, 0);
	return part;
}

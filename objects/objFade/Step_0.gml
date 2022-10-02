/// @description 

if !phase {
	if a < 1 {
		a += fadeSpeed;
	}
	else {
		with objGreenOrb {
	part_system_destroy(partSys);
}
with objJumpPad {
	part_system_destroy(partSys);
}
with objPartFGWind {
	part_system_destroy(partSys);
}
with objPartFGWindUp {
	part_system_destroy(partSys);
}
with objSavePoint{
	part_system_destroy(partSys);
}
		room_goto_next();
		
		phase = true;
	}
} else {
	if a > 0 {
		a -= fadeSpeed;
	} else {
		instance_destroy()
	}
}



/// @description Free particle systems and go to next level

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

room_goto(target);

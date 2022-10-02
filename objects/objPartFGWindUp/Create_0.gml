partSys = part_system_create();
partEmit = part_emitter_create(partSys);
part = scr_get_part_fgparticles_wind();

part_emitter_region(partSys, partEmit, 0, room_width, 0, room_height + 100, ps_shape_rectangle, ps_distr_linear);

/// @description Set up particle system

partSys = part_system_create();
partEmit = part_emitter_create(partSys);
part = scr_get_part_fgparticles();

part_emitter_region(partSys, partEmit, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(partSys, partEmit, part, 5);

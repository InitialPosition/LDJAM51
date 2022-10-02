/// @description Set up jump pad

active = true;
force = 7.5;
reactivationTime = 30;

partSys = part_system_create();
partEmit = part_emitter_create(partSys);
part = scr_get_part_jumppad();

part_emitter_region(partSys, partEmit, x, x + sprite_width, y + sprite_height, y + sprite_height, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_stream(partSys, partEmit, part, -3);

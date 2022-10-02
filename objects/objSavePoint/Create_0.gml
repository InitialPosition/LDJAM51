/// @description Set up particles

partSys = part_system_create();
partEmit = part_emitter_create(partSys);
part = scr_get_part_save();

part_emitter_region(partSys, partEmit, x, x + sprite_width, y, y + sprite_height, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_stream(partSys, partEmit, part, -30);

active = false;

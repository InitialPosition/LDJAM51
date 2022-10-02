/// @description Init orb

active = true;
reactivationTime = 120;

x += 4;
y += 4;

hoverSpeed = 0.1;
currentAnimationTime = 0;
baseHeight = y;
animationHeight = y;

partSys = part_system_create();
partEmit = part_emitter_create(partSys);
part = scr_get_part_jumporb();

part_emitter_region(partSys, partEmit, x, x + sprite_width, y, y + sprite_height, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_stream(partSys, partEmit, part, -5);

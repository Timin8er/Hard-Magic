draw_sprite(sPlaceholder1, 0, x, y);

part_emitter_region(global.flame, flame_emitter, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_linear);

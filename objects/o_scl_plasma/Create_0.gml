// Make it snow
flame_emitter = part_emitter_create(global.flame);
part_emitter_region(global.flame, flame_emitter, x-10, x+10, y-10, y+10, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(global.flame, flame_emitter, global.flamePart, 1);



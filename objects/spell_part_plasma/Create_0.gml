/// @description Creation
// You can write your code in this editor

// Make it flame
flame_emitter = part_emitter_create(global.p_sys_flame);
part_emitter_region(global.p_sys_flame, flame_emitter, x-10, x+10, y-15, y+15, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(global.p_sys_flame, flame_emitter, global.part_flame, 2);

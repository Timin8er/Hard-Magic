// create particle system
global.flame = part_system_create();
part_system_depth(global.flame, 60);

// create snowflake particle
global.flamePart = part_type_create();
part_type_shape(global.flamePart, pt_shape_snow);
part_type_orientation(global.flamePart, 0, 0, 0, 0, 1);
part_type_size(global.flamePart, 0.05, 0.25, 0, 0);
part_type_speed(global.flamePart, 1, 1.5, 0.05, 0);
part_type_direction(global.flamePart, 90, 90, 0, 4);
part_type_life(global.flamePart, 5, 15);

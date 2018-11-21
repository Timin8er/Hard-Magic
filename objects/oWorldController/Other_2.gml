// define particle systems

// flame system
global.p_sys_flame=part_system_create();
part_system_depth(global.p_sys_flame, 60);

// flame particle
global.part_flame=part_type_create();
part_type_shape(global.part_flame, pt_shape_sphere);
part_type_orientation(global.part_flame, 0, 0, 0, 0, 1);
part_type_size(global.part_flame, 0.05, 0.25, 0, 0);
part_type_speed(global.part_flame, 1, 1.5, 0.05, 0);
part_type_direction(global.part_flame, 85, 95, 0, 4);
part_type_life(global.part_flame, 5, 20);
part_type_colour2(global.part_flame, c_red, c_orange);
part_type_alpha2(global.part_flame, 0.7, 0.3);
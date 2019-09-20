event_inherited();

//window_set_cursor(cr_none);

enum component_state {
	placed,
	ghost,
	moving_free,
	moving_snap
}

enum component_collision_type {
	square,
	rectangle_tall,
	rectangle_squat,
	circle
}

enum surface_snap {
	A,
	B,
	C,
	D,
	N
}

enum mouse_hover {
	off,
	on
}

moving_component = noone;



	
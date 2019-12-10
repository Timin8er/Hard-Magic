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

enum bpSurf {
	a, // alpha, polar angel
	r, // polar radius
	x, // absolute x coord
	y, // absolute y coord
	m, // line slope
	b, // line y intercept
	den, // line distance denominator
	v, // line vector angel
	length // easy indicator for length of this enum
}

enum mouse_hover {
	off,
	on
}

moving_component = noone;



	
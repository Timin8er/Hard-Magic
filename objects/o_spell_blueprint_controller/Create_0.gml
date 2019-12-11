event_inherited();

//window_set_cursor(cr_none);

enum bp_construction_state {
	placed,
	placed_ghost,
	manip_root,
	manip_branch
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

enum bpParentGeo {
	r, // polar radius
	a, // polar angel
	b,  // relative rotation
	length
}

enum mouse_hover {
	off,
	on
}

enum bpSnap {
	r, // polar radius
	a, // polar angel
	b,  // relative rotation
	type, // type of point
	x, // absolute x
	y, // absolute y
	w, // absolute rotation
	occupied,
	length
}

manip_bp_component = noone;



	
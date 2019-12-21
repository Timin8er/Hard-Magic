// @desc search for and snap to a snap point

var snap_range = 50;
var snap_field = pi/4;

bp_parent_snap = noone;
bp_parent_snap_point_index_mine = undefined;
bp_parent_snap_point_index_other = undefined;

var dis = 99999; // closest distance

// ===== locate the closest snap point too one of my snap points
//show_debug_message("checking " + string(instance_number(o_spell_component_blueprint)) + " blueprints");


// for each blueprint
for (var o=0; o<instance_number(o_spell_component_blueprint); o++) {
	var obj = instance_find(o_spell_component_blueprint, o);
	
	if (obj != self) {
		// for each snapp point in that blueprint
		for (var i=0; i < ds_list_size(obj.bp_snap_points); i++) {
			var other_snap = ds_list_find_value(obj.bp_snap_points, i);
		
			// for each of my snap points
			for (var j=0; j < ds_list_size(bp_snap_points); j++) {
				var my_snap = ds_list_find_value(bp_snap_points, j);
			
				// if both snap points are of the same type and are unoccupied
				if (!my_snap[bpSnap.occupied] and !other_snap[bpSnap.occupied] and my_snap[bpSnap.type] == other_snap[bpSnap.type]) {
				
					var d = point_distance(my_snap[bpSnap.x], my_snap[bpSnap.y], other_snap[bpSnap.x], other_snap[bpSnap.y]);
				
					var t = abs(abs(my_snap[bpSnap.w] - other_snap[bpSnap.w]) - pi);
				
					// if these points are within range and allined
					if (d < dis and d <= snap_range and t <= snap_field) {
						dis = d
				
						// remember this pair
						bp_parent_snap = obj;
						bp_parent_snap_point_index_other = i;
						bp_parent_snap_point_index_mine = j;
					}
				}
			}
		}
	}
}

//show_debug_message(other_closest_snap_point);

// if no valid pair found, exit
if (bp_parent_snap == noone) {exit;}

// retrieve the point pair
var other_snap = ds_list_find_value(bp_parent_snap.bp_snap_points, bp_parent_snap_point_index_other);
var my_snap = ds_list_find_value(bp_parent_snap.bp_snap_points, bp_parent_snap_point_index_mine);

// get my new rotation
var theta = other_snap[bpSnap.w] - my_snap[bpSnap.b];

// set new posision
x = other_snap[bpSnap.x] + (my_snap[bpSnap.r] * cos(theta + my_snap[bpSnap.a]));

y = other_snap[bpSnap.y] + (my_snap[bpSnap.r] * sin(theta + my_snap[bpSnap.a]));

image_angle = radtodeg(theta + pi);

s_bp_snap_calc_points();

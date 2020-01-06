/// @description

var pc = instance_find(oPlayerCharacter, 0);

if (point_distance(x, y, pc.x, pc.y) < interact_range) {
	state_interactable = true;
} else {
	state_interactable = false;
}
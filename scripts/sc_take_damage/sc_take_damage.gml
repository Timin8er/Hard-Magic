/// @description the instance takes damage
/// @arg {real} dhp value of hp

var dhp = argument0;

if !self.invincible {
	self.hp += dhp;
	
	var ind = instance_create_layer(x, y, "particles_top", o_dhp_indicator)
	if dhp > 0 {
		ind.dhp = "+" + string(dhp);
		ind.c_default = c_green;
	} else if dhp < 0 {
		ind.dhp = string(dhp);
		ind.c_default = c_yellow;
	} else {
		ind.dhp = "-0";
		ind.c_default = c_gray;
	}
}


mp_mass -= mp_mass_evaporation_rate * (delta_time / 1000000);

if (mp_mass <= 0) {
	instance_destroy();
}

vsp += grav; // * (delta_time / 1000000);

x += hsp * delta_time / 1000000;
y += vsp * delta_time / 1000000;
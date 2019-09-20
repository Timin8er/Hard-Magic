collision_tilemap = layer_tilemap_get_id("collision")

// Number of Tile Collition Checks
ntcc_h = floor((bbox_bottom - bbox_top)/32) + 1; // sides
ntcc_v = floor((bbox_right - bbox_left)/32) + 1; // floor / ceiling
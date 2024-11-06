robbable = false
goldGiven = 10
relicsOwned = ds_map_keys_to_array(global.relicsOwned)


if(array_contains(relicsOwned, "oTombRaider")) {
	sprite_index = sTombstoneMoney
	image_index = 0
}

//Set initial variables - these will be overwritten by children objects
damage = 0
projType = "default"
enemies = ds_list_create()
ds_list_add(enemies, oPlayer.object_index)
//Transition from the charging state to the cooldown state

state="cooldown"
//instance_destroy(slamID)
//explodeID = instance_create_layer(x, y, "Instances", oOgreExplode)

//Set the ogre to go a cooldown sprite for a bit, after the explode animation is over.
alarm_set(1, explodeAnimationTime)

//Set the ogre back to ambling once its done with cooldown
alarm_set(2, cooldownAnimationTime)
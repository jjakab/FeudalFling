//Here we set the ogre to a cooldown sprite once it's done with its slam attack
sprite_index = sEnemyOgreCooldownAlternate
image_index = 0
alarm_set(3,zzDrawHeightInterval)

if(irandom(1) == 1) zzDrawLeft = true
else zzDrawLeft = false

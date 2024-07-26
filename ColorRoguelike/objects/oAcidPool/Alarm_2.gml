createRange = irandom_range(0,sprite_height/2)
createAngle = irandom_range(0,359)

instance_create_depth(x + lengthdir_x(createRange,createAngle),y + lengthdir_y(createRange,createAngle),-99,oAcidBubble)
alarm_set(2,bubbleSpawnFrequency)
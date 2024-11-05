createRange = irandom_range(0,(bbox_bottom-bbox_top)/2 - 3)
createAngle = irandom_range(0,359)

instance_create_depth(x + lengthdir_x(createRange,createAngle),y + lengthdir_y(createRange,createAngle),depth-1,oAcidBubble)
alarm_set(2,bubbleSpawnFrequency)
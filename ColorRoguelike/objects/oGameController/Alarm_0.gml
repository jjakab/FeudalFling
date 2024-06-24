/// @description Spawn enemies

spawnVertical = irandom_range(0,1) //we decide to spawn on from vertical bounds or horizontal bounds
if(spawnVertical = 1) //we spawn on vertical bound opposite of player
{
	if(oPlayer.y > (room_height / 2))
	{
		spawnY = -64
		targetY = 128
	}
	else
	{
		spawnY = room_height + 64
		targetY = room_height - 128
	}
	spawnX = room_width / 2 //ENHANCEMENT: THIS IS ALSO RANDOMLY DETERMINED
	targetX = room_width / 2
}
else //we spawn on horizontal bound opposite of player
{
	if(oPlayer.x > (room_width / 2))
	{
		spawnX = -64
		targetX = 128
	}
	else
	{
		spawnX = room_width + 64
		targetX = room_width - 128
	}
	spawnY = room_height / 2
	targetY = room_height / 2
}

spawnAngleToTarget = point_direction(spawnX,spawnY,targetX,targetY) //determine angle from spawn point to target point

spawnDirectionalModifier = irandom_range(0,1) 
if(spawnDirectionalModifier = 0) spawnDirectionalModifier = -1

if(enemiesToSpawn > 1)
{
	spawnCurrentAngle = spawnAngleToTarget - (spawnDirectionalModifier * (spawnConeWidth / 2)) //determine beginning
	spawnIncrementAngle = spawnConeWidth / (enemiesToSpawn - 1) * spawnDirectionalModifier // increment direction is based off of which direction the triangle is rotating
}
else
{
	spawnCurrentAngle = spawnAngleToTarget
	spawnIncrementAngle = 0
}


for (var i = enemiesSpawned; i < enemiesToSpawn; i++) //ENHANCEMENT: INCORPORATE ALARMS
{
	spawnedEnemy = instance_create_depth(spawnX,spawnY,0,oEnemyTriangle) //ENHANCEMENT: determine enemy type dynamically?
	with(spawnedEnemy)
	{
		spawnVelocityX = other.spawnInitialVelocity * cos(degtorad(other.spawnCurrentAngle))
		spawnVelocityY = other.spawnInitialVelocity * sin(degtorad(other.spawnCurrentAngle))
		isSpawning = true
	}
	spawnCurrentAngle += spawnIncrementAngle
}

alarm_set(0,240)







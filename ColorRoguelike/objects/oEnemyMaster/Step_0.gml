/// @description Insert description here
if enemyHealth <= 0
{
	instance_destroy()	
}


//when this is first spawned in, it has initial spawn velocity which needs to decrement over time
spawnVelocityX = spawnVelocityX + (-sign(spawnVelocityX) * spawnVelocityDecrementX)
spawnVelocityY = spawnVelocityY + (-sign(spawnVelocityY) * spawnVelocityDecrementY)

if(abs(spawnVelocityX) <= abs(spawnVelocityDecrementX))
{
	spawnVelocityX = 0
}
if(abs(spawnVelocityY) <= abs(spawnVelocityDecrementY))
{
	spawnVelocityY = 0
}

if(spawnVelocityX = 0 and spawnVelocityY = 0) isSpawning = false

if(isSpawning)
{
	x = x + spawnVelocityX
	y = y - spawnVelocityY
}

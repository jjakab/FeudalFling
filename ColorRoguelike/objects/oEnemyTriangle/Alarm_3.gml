/// @description Shoot bullet
if (bulletsShot < bulletsToShoot) //still need to shoot a bullet
{
	bullet = instance_create_depth(x,y,0,oEnemyTriangleBullet)
	with(bullet)
	{
		xSpeed = other.bulletSpeed * cos(degtorad(other.shootingCurrentAngle))
		ySpeed = other.bulletSpeed * sin(degtorad(other.shootingCurrentAngle))
	}

	shootingCurrentAngle += shootingIncrementAngle
	bulletsShot = bulletsShot + 1
	alarm_set(3,firingCooldownSteps)
}
else
{
	moveStage = "4"
}







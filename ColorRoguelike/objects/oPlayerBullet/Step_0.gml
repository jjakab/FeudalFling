/// @description Insert description here
x = x + xSpeed
y = y + ySpeed


//check for collision with enemy
if(place_meeting(x,y,oEnemyMaster))
{
	enemyObj = instance_place(x,y,oEnemyMaster)
	with (enemyObj)
	{
		enemyHealth = enemyHealth - 2	
	}
	
	
	instance_destroy()
}




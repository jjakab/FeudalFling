//This script gets called when there is a relic that updates something core to the player
function updatePlayer(){
	oPlayer.playerHealth = global.playerHealth
	oPlayer.maxPlayerHealth = global.maxPlayerHealth
	oPlayer.attackDamage = global.attackDamage
	oPlayer.launchCoefficient = global.launchCoefficient 
	oPlayer.fric = global.fric
}
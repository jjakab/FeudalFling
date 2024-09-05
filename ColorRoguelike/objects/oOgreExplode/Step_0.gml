/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, oPlayer)){
	if(canDamage = true){
		global.playerHealth -= 10
	}
	
	canDamage = false
	alarm_set(0,20)
	alarm_set(1, noDamageWindow)
}
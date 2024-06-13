/// @description Insert description here
// You can write your code in this editor

if (state == "rotate"){
	state = "dash"
	alarm_set(0, 120)
}

else if(state == "dash"){
	state = "rotate"
	alarm_set(0,120)
}
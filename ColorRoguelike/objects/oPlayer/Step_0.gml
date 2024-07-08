/// @description Movement, collision checks, etc.

//check keyboard presses
keyRight = keyboard_check(ord("D")) - keyboard_check(ord("A"))
keyUp = keyboard_check(ord("W")) - keyboard_check(ord("S"))

switch (state){
	case PLAYERSTATES.FREE: playerStateFree(); break;
	case PLAYERSTATES.ATTACK: playerStateAttack(); break;
}

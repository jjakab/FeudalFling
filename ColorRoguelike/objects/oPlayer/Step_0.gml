/// @description Movement, collision checks, etc.

keyRight = keyboard_check(ord("D")) - keyboard_check(ord("A"))
keyUp = keyboard_check(ord("W")) - keyboard_check(ord("S"))

x = x + (keyRight * moveSpeed)
y = y - (keyUp * moveSpeed)




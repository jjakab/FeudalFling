//Creating some instance variables for the square..

fillSprite = sEnemySquareWhite
enemyBaseHealth = 40


xSpeed = 7
ySpeed = 7
rotSpeed = 2
dashSpeed = 7

xdirection = 0
ydirection = 0
playerDirection = 0
angleIncrement = 0.5

state = "rotate"
standardPhaseTime = 120

enemyType = "square"

alarm_set(0, 120)
event_inherited()
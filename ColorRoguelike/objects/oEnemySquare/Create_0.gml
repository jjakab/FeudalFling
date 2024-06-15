//Creating some instance variables for the square..

fillSprite = sEnemySquareBlue
enemyBaseHealth = 75


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

expAmount = 5

alarm_set(0, 120)
event_inherited()
//Creating some instance variables for the square..

fillSprite = sEnemySquareBlue
enemyBaseHealth = 75


xSpeed = 0
ySpeed = 0
rotSpeed = 0
dashSpeed = 10

xdirection = 0
ydirection = 0
player_direction = 0

state = "rotate"
rotationTime = 120;

alarm_set(0, 120)
event_inherited()
/// @description Variable declarations

fillSprite = sEnemyTriangleWhite
enemyBaseHealth = 50

//movement related

xSpeed = 0
ySpeed = 0
rotSpeed = 0

moveStage = "0"
moveDegree = 0

stage1IncrementSpeed = .05
stage1MaxSpeed = 3
stage1StepDuration = 60

stage2RotIncrementSpeed = .1
stage2MaxRotSpeed = 10

//shooting related
bulletsToShoot = 7
bulletsShot = 0
angleToPlayer = 0
shootingIncrementAngle = 0
shootingCurrentAngle = 0
firingCooldownSteps = 15
arcRange = 50 //arc of spread, measured in degrees
bulletSpeed = 5

//set alarm to proceed to stage 1
alarm_set(1,120)

event_inherited()







//Variable declarations
startChargeSpeed = 0.02
finalChargeSpeed = 0.3
chargeTime = 300
zapTime = 60

image_speed = startChargeSpeed

state = "charging"

//Find the secondary tower closest to this to 'pair' to
pairedTower = instance_nearest(x,y,oTeslaTowerSecondary)
angleToPaired = point_direction(x,y,pairedTower.x,pairedTower.y)

alarm_set(0,chargeTime)

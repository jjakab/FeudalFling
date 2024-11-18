//The ZAP has ended - time to recharge

//Reset image speed to minimum
image_speed = startChargeSpeed
image_index = 0

//Change state
state = "charging"

//Set a timer
alarm_set(0,chargeTime)
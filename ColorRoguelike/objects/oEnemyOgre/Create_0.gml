/// @description Insert description here
// You can write your code in this editor
event_inherited()


hp=300
state = "amble"; // Initial state
slamCooldown = 5; // Time to pause after slamming
slamRange = 50; // Distance for the slam to trigger
xSpeed = 0.3; // Movement speed while ambling
ySpeed = 0.3;

//Instance IDs so we can destroy the objects if required.
slamID = 0;
explodeID = 0;
//Animation times for the alarms
explodeAnimationTime = 30;
cooldownAnimationTime = 180;
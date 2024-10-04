//STATES
//Amble - Ogre will slowly walk towards player, until he reaches a certain radius of the player
//Charging - Ogre will charge up his slam
//Cooldown - Ogre will be in a cooldown sprite after his slam

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
chargeAnimationTime = 90;
swingInterval = 60 //Stage in charge animation at which the ogre swings the club down
explodeAnimationTime = 30;
cooldownAnimationTime = 180;

//Variables related to drawing ZZs
zzDrawLeft = false
zzXModInitial = -20
zzDrawHeightMod = 1
zzDrawHeightInterval = 25

//Variables related to drawing weapon
weaponSprite = sWoodenClubAlternate

weaponXInitial = 0
weaponYInitial = 8

weaponXCurr = weaponXInitial
weaponYCurr = weaponYInitial
weaponAngle = 0


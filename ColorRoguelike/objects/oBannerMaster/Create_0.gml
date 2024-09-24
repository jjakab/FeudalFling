//Set the variable which this banner is tracking - this will be reset in child variables
trackingVar = ""

alarm_set(0,1) // Set an alarm after which variable initial values are read in child object

//Draw variables
drawStartX = x + sprite_get_width(sprite_index) - 6
drawY = y + 5
image_alpha = 1

//Declare variables for sprites - these will be overwritten in child object
numSpritesMap = ds_map_create()
arrowSprite = noone //This will be redeclared in child object
textSprite = noone //This will be redeclared in child object
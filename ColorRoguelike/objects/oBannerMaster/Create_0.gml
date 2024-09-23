//Set the variable which this banner is tracking - these will be reset in child variables
trackingVar = ""
trackingMaxVar = ""

alarm_set(0,1) // Set an alarm after which variable initial values are read in child object

//Variables related to drawing
nodeInitialX = 80
nodeXIncrement = 20
nodeInitialY = 4

maxNodes = 5 //This is the maximum # of nodes that can be drawn

//NEW DRAW VARIABLES
drawStartX = x + sprite_get_width(sprite_index) - 6
drawY = y + 5
image_alpha = 0.8

//Sprites for nodes - these will be overwritten
emptyNodeSprite = sHealthNodeEmpty
fullNodeSprite = sHealthNodeFull

//Declare variables for sprites - these will be overwritten in child object
numSpritesMap = ds_map_create()
arrowSprite = noone //This will be redeclared in child object

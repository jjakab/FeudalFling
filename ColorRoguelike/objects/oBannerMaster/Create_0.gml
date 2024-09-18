//Set the variable which this banner is tracking - these will be reset in child variables
trackingVar = ""
trackingMaxVar = ""

alarm_set(0,1) // Set an alarm after which variable initial values are read in child object

//Variables related to drawing
nodeInitialX = 80
nodeXIncrement = 20
nodeInitialY = 4

//Sprites for nodes - these will be overwritten
emptyNodeSprite = sHealthNodeEmpty
fullNodeSprite = sHealthNodeFull
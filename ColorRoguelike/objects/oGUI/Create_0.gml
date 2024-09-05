
//VAariables related to drawing hearts
hpPerHeart = 4
numHearts = 0

healthDrawStartX = 10
healthDrawXInterval = 22
healthDrawStartY = view_get_hport(0) - 25


//Variables related to drawing relics
relicDrawStartX = 320
relicDrawXInterval = 32
relicDrawStartY = healthDrawStartY


//Variables related to drawing gold
goldDrawStartX = 180
goldDrawStartY = healthDrawStartY
goldAmountDrawStartX = goldDrawStartX + 30

//General draw settings
draw_set_font(fPixelFont24)

drawXScale = 1.5
drawYScale = 1.5

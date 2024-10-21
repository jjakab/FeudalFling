//Draw jiggle
if(jiggleUp) {
	draw_sprite(sprite_index,image_index,x,y-2)	
}
else {
	draw_self()
}

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_font(fPixelFont24)

var drawString = ""

if(statString != "") {
	drawString = beginningString + " " + statString + " " + endingString
}
else {
	drawString = beginningString	
}

//Varia
var xLoc = x + 8 //Starting X location of main text
var yHeight = y - 10 //Starting y location of main text

var yOffset = 5 //How far below text should the background start

var width = 300 //Width of main text
var sep = 30 //Separation of main text

//Determine how far vertically the middle section needs to be scaled
var yScaleFactor = max(10,string_height_ext(drawString,sep,width) / 4) //How many pixels tall should the middle of the caption be

//Draw the description background
draw_sprite(bottomSprite,0,xLoc,yHeight + yOffset)
draw_sprite_ext(sShopCaptionMiddle,0,xLoc,yHeight + yOffset - sprite_get_height(sShopCaptionBottomRed),1,yScaleFactor,0,c_white,1)
draw_sprite(sShopCaptionTop,0,xLoc,yHeight + yOffset - (sprite_get_height(sShopCaptionMiddle) * yScaleFactor) - sprite_get_height(sShopCaptionBottomRed))

//Draw relic name
draw_set_color(c_yellow)
draw_text_ext_transformed(xLoc,yHeight + 2 - (sprite_get_height(sShopCaptionMiddle) * yScaleFactor) - sprite_get_height(sShopCaptionBottomRed),relicTitle,sep,width,.25,.25,0)

//Draw main text
draw_set_color(c_white)
draw_text_ext_transformed(xLoc,yHeight - 10,drawString,sep,width,.25,.25,0)

//Draw the rarity
draw_set_color(rarityColor)
draw_text_ext_transformed(xLoc - sprite_get_width(sShopCaptionBottomRed) / 4,yHeight-1,rarity,sep,width,0.25,0.25,0)

//Draw the gold cost

draw_set_color(c_white)
var goldWidth = string_width_ext(string(goldCost),sep,width) / 4
draw_text_ext_transformed(xLoc - (goldWidth / 4) + sprite_get_width(sShopCaptionBottomRed) / 4,yHeight-1,goldCost,sep,width,0.25,0.25,0)
draw_sprite_ext(sGoldOwned,0,xLoc + (goldWidth / 4) + 2 + sprite_get_width(sShopCaptionBottomRed) / 4,yHeight - 7,.5,.5,0,c_white,1)

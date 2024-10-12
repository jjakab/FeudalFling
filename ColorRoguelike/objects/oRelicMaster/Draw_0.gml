draw_self()

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


var xLoc = x + 8
var yHeight = y - 10

var width = 260
var sep = 30

//Draw the description background
var yScaleFactor = max(10,string_height_ext(drawString,sep,width) / 4) //How many pixels tall should the middle of the caption be
var yOffset = 5 //How far below text should the background start

draw_sprite(sShopCaptionBottom,0,xLoc,yHeight + yOffset)
draw_sprite_ext(sShopCaptionMiddle,0,xLoc,yHeight + yOffset - sprite_get_height(sShopCaptionBottom),1,yScaleFactor,0,c_white,1)
draw_sprite(sShopCaptionTop,0,xLoc,yHeight + yOffset - (sprite_get_height(sShopCaptionMiddle) * yScaleFactor) - sprite_get_height(sShopCaptionBottom))


draw_set_color(c_white)

draw_text_ext_transformed(xLoc,yHeight - 3,drawString,sep,width,.25,.25,0)
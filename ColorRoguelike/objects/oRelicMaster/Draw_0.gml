draw_self()


draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_set_font(fPixelFont6)

var drawString = ""

if(statString != "") {
	drawString = beginningString + " " + statString + " " + endingString
}
else {
	drawString = beginningString	
}

var yHeight = y - 10

draw_set_color(c_white)
draw_text_ext(x,yHeight,drawString,10,76)
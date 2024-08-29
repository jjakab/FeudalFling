draw_self()


draw_set_halign(fa_center)
draw_set_font(fPixelFont6)

var drawString = ""

if(statString != "") {
	drawString = beginningString + " " + statString + " " + endingString
}
else {
	drawString = beginningString	
}

var yHeight = y - (string_width(drawString) / 3)

draw_set_color(c_white)
draw_text_ext(x,yHeight,drawString,10,76)
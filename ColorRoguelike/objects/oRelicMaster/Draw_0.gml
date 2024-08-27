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

draw_text_ext(x,y-50,drawString,8,64)
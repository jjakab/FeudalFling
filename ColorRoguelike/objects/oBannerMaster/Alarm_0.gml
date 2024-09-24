currentVal = variable_global_get(trackingVar)

//Upgraded value is equal to current value + 1
upgradedVal = currentVal + 1


//Break the current value into digits
var s = string(currentVal)
var n = string_length(s)
currDigitArr = array_create(n)
for(var i = 0; i < n; i++) {
	currDigitArr[i] = real(string_char_at(s,n-i))	
}

//Break the upgraded value into digits
var s = string(upgradedVal)
var n = string_length(s)
upgradedDigitArr = array_create(n)
for(var i = 0, arr; i < n; i++) {
	upgradedDigitArr[i] = real(string_char_at(s,n-i))	
}


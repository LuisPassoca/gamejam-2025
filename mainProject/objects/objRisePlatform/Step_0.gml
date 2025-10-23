if !place_meeting(x,y-1,objRisePlatformStop) && rise = 1 {
	y--
}
else {
	fall = 1
	rise = 0
}

if y != oldY && fall = 1 {
	y++
}
else {
	fall = 0
	rise = 1
}

platformY = y
platformDirection = fall - rise
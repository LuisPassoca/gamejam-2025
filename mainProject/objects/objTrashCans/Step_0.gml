if place_meeting(x,y, objPlayer) {
	if createInstance = 0 {
		instance_create_depth(x,y,0,objKeyUp)
		createInstance = 1
	}
	if keyboard_check_pressed(vk_up) 
		room_goto_next()
}
else {
	instance_destroy(objKeyUp)
	createInstance = 0
}

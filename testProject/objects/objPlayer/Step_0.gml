//Horizontal movement
hspd = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * spd)

if (place_meeting(x+hspd, y, objCollision)) {
	while !(place_meeting(x+sign(hspd), y, objCollision)) {
		x+=sign(hspd)
	}
	hspd = 0
}

x += hspd


//Vertical movement

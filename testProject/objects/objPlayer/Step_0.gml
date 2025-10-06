//Horizontal movement
hspd = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * spd)

if (place_meeting(x+hspd, y, objCollision)) {
	while !(place_meeting(x+sign(hspd), y, objCollision)) {
		x+=sign(hspd)
	}
	hspd = 0
}

x += hspd

//Gravity pulls you down
if (place_meeting(x, y+vspd, objCollision)) {
	while !(place_meeting(x, y+sign(vspd), objCollision)) {
		y+=sign(vspd)
	}
	vspd = 0
}

y += vspd

//Jump (non-variable height)
if keyboard_check_pressed(vk_up) && place_meeting(x, y+1, objCollision) {
	vspd = -12
}
else
{
	vspd += 0.5
}

//Variable Jump
if !keyboard_check(vk_up) && vspd<0.3
{
	vspd+=0.5
}

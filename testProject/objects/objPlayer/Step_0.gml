//Horizontal movement
var hspd = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * spd)

if (place_meeting(x+hspd, y, objCollision)) {
	while !(place_meeting(x+sign(hspd), y, objCollision)) {
		x+=sign(hspd)
	}
	hspd = 0
}

x += hspd

//Get direction player is facing and puts in a global
if sign(hspd) != 0 {
global.facing = sign(hspd)
}

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
	vspd = -jspd
}
else
{
	vspd += grav
}

//Variable Jump
if !keyboard_check(vk_up) && vspd<grav
{
	vspd += grav
}

//Dash



/*
//Charge shot
if keyboard_check(ord("C")) && shotcharge<=2 && canshoot = 1 {
	shotcharge += 0.01
}

//Set shot dmg on global to tranfer over to enemy (the if checks DEFINITELY not optimal)
if keyboard_check_released(ord("C")) && canshoot = 1 {
	canshoot = 0
	if shotcharge < 1 {
		global.shotdmg=1
	}
	
	if shotcharge >= 1 && shotcharge <2 {
		global.shotdmg=2
	}
	
	if shotcharge >= 2 {
		global.shotdmg=3
	}
	
	instance_create_depth(x, y, 1, objProjectile)
	
	time_source_start(resetShootingTimer)
}
*/
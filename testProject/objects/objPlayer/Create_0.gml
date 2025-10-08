spd = 2
grav = 0.25
jspd = 5
vspd = 0
hspd = 0
dashCooldown = 0
canGrab = 0
wallJumpTimer = 0
canWallJump = 0

noDash = function() {
	//Horizontal movement
	hspd = ((keyboard_check(vk_right) - keyboard_check(vk_left)) * spd)

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
	if keyboard_check_pressed(vk_up) && place_meeting(x, y+5, objCollision) {
		vspd = -jspd
		canGrab = 0
	}
	else
	{
		vspd += grav
		if !place_meeting(x, y+1, objCollision) {
			canGrab = 1
		}
	}

	//Variable Jump
	if !keyboard_check(vk_up) && vspd<grav
	{
		vspd += grav
		if !place_meeting(x, y+1, objCollision) {
			canGrab = 1
		}
	}
	
	//Dash
	if keyboard_check_pressed(vk_shift) && dashCooldown = 0 {
		state = isDashing
		dashTimer = 12
		dashCooldown = 30
		vspd = 0
	}
	
	if dashCooldown != 0 {
		dashCooldown--
	}
	
	//Wallgrab
	if canGrab = 1 && place_meeting(x+sign(global.facing), y, objCollision) {
		state = wallGrab
		vspd = 0
		dashCooldown = 0
	}	
}

isDashing = function(){
	hspd = global.facing * spd * 2
	
	if (place_meeting(x+hspd, y, objCollision)) {
		while !(place_meeting(x+sign(hspd), y, objCollision)) {
			x+=sign(hspd)
		}
		hspd = 0
	}
	
	x += hspd
	dashTimer--

	if dashTimer = 0 {
	state = noDash
	}
}

wallGrab = function() {
	if (place_meeting(x, y+vspd, objCollision)) {
		while !(place_meeting(x, y+sign(vspd), objCollision)) {
			y+=sign(vspd)
		}
		vspd = 0
	}
	
	hspd = (keyboard_check(vk_right) - keyboard_check(vk_left))
	if hspd = global.facing {
		vspd = grav
	}
	else {
		vspd += grav
	}
	
	if keyboard_check_pressed(vk_up) {
		state = wallJump
		canWallJump = 1
		wallJumpTimer = 10
	}
	
	y += vspd
	
	if (hspd != global.facing && hspd != 0) or !place_meeting(x+sign(global.facing), y, objCollision) or place_meeting(x, y+1, objCollision) {
	state = noDash
	}
		
	if keyboard_check_pressed(vk_shift) && dashCooldown = 0 {
		state = isDashing
		global.facing *= -1
		dashTimer = 12
		dashCooldown = 30
		vspd = 0
	}
	
	
}

wallJump = function() {

	if place_meeting(x+sign(global.facing), y, objCollision) && canWallJump = 1 {
	vspd = -jspd
	canWallJump = 0
	}
	else {
		vspd += grav
	}
	
	if wallJumpTimer != 0 && !place_meeting(x+(sign(global.facing * -1)), y, objCollision) {
	x += sign(global.facing * -1) * spd
	}
	else {
		state = noDash
	}
	
	if place_meeting(x+(sign(global.facing * -1)), y, objCollision) {
		global.facing *= -1
		state = wallGrab
	}
	
	wallJumpTimer--
	y += vspd
	
}


state = noDash


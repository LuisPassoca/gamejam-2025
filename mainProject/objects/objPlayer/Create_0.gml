image_xscale = 2
image_yscale = 2

global.forcejump = 0


vspd = 0
hspd = 0
mspd = 2
grav = 0.2
jspd = 5
dashTime = 20
canDash = 1
lastFacing = 1

stateFree = function() {
	//Velocidade horizontal
	var _hspd = (keyboard_check(vk_right) - keyboard_check(vk_left)) * mspd
	
	if !place_meeting(x,y+1,objCol)
	hspd = lerp(hspd,_hspd,0.2)
	else
	hspd = _hspd
	
	//Gravidade	
	if !place_meeting(x,y+1,objCol) && vspd < 3
	vspd += grav

	if place_meeting(x,y+1,objCol)
	vspd = 0
	
	if (keyboard_check(vk_up) && place_meeting(x,y+1,objCol)) or (global.forcejump = 1) {
	if !global.forcejump = 1
		vspd = -jspd
	else
		vspd = (-jspd) * 1.5
	global.forcejump=0
	}
	
	if !keyboard_check(vk_up) && vspd<grav
	vspd += grav
	
	if place_meeting(x,y-1,objCol)
	vspd = 0.1
	
	if place_meeting(x,y-5,objRisePlatform) && !place_meeting(x,y+1,objCol) {
	y+=2
	vspd += 1
	}
	
	//Aplica gravidade e velocidade horizontal
	move_and_collide(hspd,0,objCol)
	move_and_collide(0,vspd,objCol)
	
	//Dash
	if keyboard_check_pressed(vk_shift) && canDash = 1 {
		canDash = 0
		state = stateDash
	}
	
	if place_meeting(x,y+1,objCol) or place_meeting(x+sign(hspd),y,objCol)
		canDash = 1
		
	//Sprites
	manageSprites()
	
	//WallJump
	if place_meeting(x+lastFacing, y, objCol) && keyboard_check_pressed(vk_up) && !place_meeting(x, y+1, objCol) {
		vspd = -jspd
		hspd = -5 * lastFacing
	}
	
	//Moving platform
	
	with instance_nearest(x,y,objRisePlatform) {
		if place_meeting(x,y-1,objPlayer) {
			global.varY = platformY + platformDirection
			global.enableTP = 1
		}
		else
			global.enableTP = 0
	}
	
	if global.enableTP = 1
		y = global.varY
}


manageSprites = function() {
	//Sprites
	if hspd = 0 && place_meeting(x,y+1,objCol){
	image_speed = 1
	sprite_index = sprPlayerIdle
	}
	else{
		if place_meeting(x,y+1,objCol){
			image_speed = 1
			sprite_index = sprPlayerRun
			}
		else
		{
			image_speed = 1
			sprite_index = sprPlayerJump
			if vspd < 0 
				image_index = 0
			else
				image_index = 1
		}
	}
}

stateDash = function() {
	sprite_index = sprPlayerDash
	
	if dashTime > 0 {	
	move_and_collide(sign(lastFacing)*5, 0,objCol)
	if place_meeting(x+sign(lastFacing),y, objCol)
		dashTime = 0
	dashTime--
	}
	else 
	{
		vspd = 0
		state = stateFree
		dashTime = 20
	}
}








state = stateFree
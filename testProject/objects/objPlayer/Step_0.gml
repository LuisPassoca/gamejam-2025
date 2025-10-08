state()
if hspd != 0 {
		sprite_index = sprPlayerWalk
		image_xscale = global.facing
	}
	else {
		sprite_index = sprPlayerIdle
		image_xscale = global.facing
	}
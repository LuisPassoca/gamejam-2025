if global.checkpointXY[0] = 0 {	
			global.checkpointXY[0] = x
}

if global.checkpointXY[1] = 0 {	
			global.checkpointXY[1] = y
}

if !instance_exists(objPlayer)
	instance_create_depth(global.checkpointXY[0], global.checkpointXY[1], 0, objPlayer)
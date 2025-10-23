state()

global.playerX = x
global.playerY = y

if y > room_height + 100 {
	room_restart()
}

if hspd < 0 {
	image_xscale = -2
	lastFacing = -1
}
	
if hspd > 0 {
	image_xscale = 2
	lastFacing = 1
}
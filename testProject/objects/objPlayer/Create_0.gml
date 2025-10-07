spd = 2
grav = 0.5
jspd = 8
vspd = 0

shotcharge = 0
canshoot = 1


//Timesource to reset shooting (later change to shoot 3 at a time maybe then freeze)
var resetShooting = function() {
	canshoot = 1
	shotcharge = 0 
}

resetShootingTimer = time_source_create(time_source_game, 0.5, time_source_units_seconds, resetShooting)	
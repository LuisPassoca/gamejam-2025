y+=4

if global.lixocheck = 1 {
	if place_meeting(x,y,objSkillBar){
		global.lixo--
		audio_play_sound(soundTrash,0,0,0.25)
		global.lixocheck=2
		instance_destroy()
	}
	else
		global.lixocheck=0
}

if y > 280 {
	instance_destroy()
	global.lixocheck=2
}
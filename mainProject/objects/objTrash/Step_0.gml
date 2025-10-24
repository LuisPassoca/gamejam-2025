if place_meeting(x,y,objPlayer) {
	global.lixo++
	audio_play_sound(soundTrash,0,0,0.5)
	instance_destroy(self)
}
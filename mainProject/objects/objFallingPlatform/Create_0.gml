sprite_index = sprCloud

tsAppear = time_source_create(time_source_game,3, time_source_units_seconds, function() {
	sprite_index = sprCloud
	image_speed = 1
})

tsFall = time_source_create(time_source_game,0.5, time_source_units_seconds, function() {
	sprite_index = sprCloud2
	audio_play_sound(cloudVanish,0,0,20)
	time_source_start(tsAppear)
})
height = image_yscale


tsAppear = time_source_create(time_source_game,5, time_source_units_seconds, function() {
	image_yscale = height
})

tsFall = time_source_create(time_source_game,3, time_source_units_seconds, function() {
	image_yscale = 0
	time_source_start(tsAppear)
})
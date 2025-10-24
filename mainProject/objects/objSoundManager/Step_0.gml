if room != prevRoom {
	prevRoom = room
	switchSong = 1
}


if room = TitleScreen && switchSong = 1 {
	audio_stop_all()
	audio_play_sound(soundTitle,1,0)
}

if room = StageBack && switchSong = 1 {
	audio_stop_all()
	audio_play_sound(soundStageClean,1,1)
}

if room = End && switchSong = 1 {
	audio_stop_all()
	audio_play_sound(soundEnd,1,0)
}

if room = Stage && switchSong = 1 {
	audio_stop_all()
	audio_play_sound(soundStageDirty,1,1)
}

if room = SortingMinigame && switchSong = 1 {
	audio_stop_all()
	audio_play_sound(soundMinigame,1,1)
}

	switchSong = 0
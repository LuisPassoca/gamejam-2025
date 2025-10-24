window_set_size(288 * 3,208 * 3)

window_center()

game_set_speed(60,gamespeed_fps)

randomize()

//Atribuir variáveis
global.text = ""
global.enableTP = 0
global.varY = 0




if room = TitleScreen or room = End
	layer_set_visible("UILayer", false)
else {
	layer_set_visible("UILayer", true)
}
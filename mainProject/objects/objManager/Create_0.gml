window_set_size(288 * 3,208 * 3)

window_center()

game_set_speed(60,gamespeed_fps)

randomize()

//Atribuir variáveis
global.text = ""
global.lixo = 10



if room != Fase1
	layer_set_visible("UILayer", false)
else {
	instance_create_depth(global.checkpointXY[0], global.checkpointXY[1], 0, objPlayer)
	layer_set_visible("UILayer", true)
}
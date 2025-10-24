move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)

buttonIndex += move

if keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_up)
	audio_play_sound(soundSelect,0,0,0.2)

//Cria um loop nos botões
if buttonIndex < 0
	buttonIndex = buttons-1
	
if buttonIndex > buttons-1
	buttonIndex = 0
	
//Executa a ação do botão qdo se pressiona enter
if keyboard_check_pressed(vk_enter)
	switch buttonIndex {
		case 0: //start
		room_goto_next()
		break;
		
		case 1: //fullscreen
		window_set_fullscreen(!window_get_fullscreen())
		break;
		
		case 2: //Credits
		room_goto(Controls)
		break;
		
		case 3: //quit
		game_end()
		break;
		
	}
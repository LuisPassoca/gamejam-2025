move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)

buttonIndex += move

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
		
		case 1: //credits
		break;
		
		case 2: //quit
		game_end()
		break;
		
	}
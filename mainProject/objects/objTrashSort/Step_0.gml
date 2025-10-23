if global.lixo != 0 {
	if !wait {
	lixo = irandom_range(0,4)
	global.lixosprite = lixo
	instance_create_depth(x + ((lixo) * 48),y,0,objTrashMinigame)
	wait = true
	}
	
	if wait {
		if keyboard_check_pressed(vk_shift) && lixo = 0
		{
			global.lixocheck = 1
		}
			
		if keyboard_check_pressed(vk_left) && lixo = 1
		{
			global.lixocheck = 1
		}
			
		if keyboard_check_pressed(vk_down) && lixo = 2
		{
			global.lixocheck = 1
		}
		
		if keyboard_check_pressed(vk_up) && lixo = 3
		{
			global.lixocheck = 1
		}
			
		if keyboard_check_pressed(vk_right) && lixo = 4
		{
			global.lixocheck = 1
		}
		if global.lixocheck = 2 {
			global.lixocheck = 0
			wait = false
		}
		
	}
	
	
	
	
	
}

if global.lixo = 0
	room_goto_next()

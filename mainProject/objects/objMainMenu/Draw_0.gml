var i = 0
draw_set_font(fontPress2PStart)

//Desenha os botões na tela e altera a cor quando selecionados
repeat (buttons) {
	draw_set_color(c_white)
	if (i == buttonIndex)
		draw_set_color(c_yellow)
	draw_text(menuX, menuY + (drawHeight * i), button[i])
	i++
}

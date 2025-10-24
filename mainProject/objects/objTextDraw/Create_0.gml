text = ""

if room == Stage {
	global.text = "move"
}

if room == End {
	global.text = "end"
}

switch (global.text) {
	case "test":
	text = "This is a test text!"
	break;
	case "move":
	text = "Use as setinhas do teclado para se mover!"
	break;
	case "end":
	text = "Parabéns, suas\natitudes ajudaram\na salvar a natureza!\n\n\n\n\n\n\n\nObrigado por jogar!"
	break;
}
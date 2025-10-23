text = ""

if room == Fase1 {
	global.text = "move"
}

switch (global.text) {
	case "test":
	text = "This is a test text!"
	break;
	case "move":
	text = "Use as setinhas do teclado para se mover!"
	break;
}
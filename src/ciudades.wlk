object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	method teEcontre(alguien){
		game.say(alguien, "bienvenidos a villa gesell")
	}
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
		method teEcontre(alguien){
		game.say(alguien, "bienvenidos a buenos aires")
	}
}

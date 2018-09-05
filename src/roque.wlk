import comidas.*
import pepita.*

object roque {

	var property posicion = game.at(0, 0)
	// var property energia = 90
	var comidaActual = null

	method imagen() = "jugador.png"

	method encontraste(nuevaComida) {
	if (comidaActual != null) {
			game.addVisualIn(comidaActual, game.at(1.randomUpTo(9), 6.randomUpTo(9)))
		}
		comidaActual = nuevaComida
		game.removeVisual(comidaActual)
	}

	method darDeComer() {
		if (comidaActual != null) {
			pepita.come(comidaActual)
			game.addVisualIn(comidaActual, game.at(1.randomUpTo(9), 6.randomUpTo(9)))
			comidaActual = null
		}
	}

}




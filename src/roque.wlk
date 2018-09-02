import comidas.*
import pepita.*

object roque {

	var property posicion = game.at(0, 0)
	// var property energia = 90
	var comidaActual = null

	method imagen() = "jugardo.png"

	method encontraste(nuevaComida) {
		if (comidaActual != null) {
			game.addVisualIn(comidaActual, posicion.up(1))
		}
		comidaActual = nuevaComida
		game.removeVisual(comidaActual)
	}

	method darComida() {
		pepita.come(comidaActual)
		comidaActual = null
	}

}

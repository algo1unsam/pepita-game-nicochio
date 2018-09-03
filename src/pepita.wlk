import ciudades.*
import roque.*

object pepita {

	var property energia = 100
	var property ciudad
	var property posicion = game.at(3, 3)

	method imagen() {
		if (energia < 10) {
			return "pepitaCansada.png"
		}
		if (energia > 100) {
			return "pepitaGorda.png"
		} else {
			return "pepita.png"
		}
	}

	method come(comida) {
		energia = energia + comida.energia()
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		} else {
			game.say(self, "ya estoy en este lugar")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if (energia >= 10) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else {
			game.say(self, "dame de comer primero!")
		}
	}

	method teEcontro(alguien) {
		alguien.darDeComer(self)
	}

}


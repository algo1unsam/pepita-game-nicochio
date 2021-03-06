import ciudades.*
import roque.*

object pepita {

	var property energia = 100
	var property ciudad
	var property posicion = game.at(3, 3)

	method imagen() {
		if (energia < 10) {
			return "pepitaCanchera.png"
		}
		if (energia > 100) {
			return "pepita-gorda-raw.png"
		} else {
			return "pepita1.png"
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
		if (energia > self.energiaParaVolar(posicion.distance(nuevaPosicion))) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		} else {
			game.say(self, "dame de comer primero!")
		}
	}

	// TODO y alguien para qué esta?
	// el mensaje deberías mandárselo a alguien y no a roque
	// (ya que esa es la idea, le mandas por parámetro el objeto con el que se cruzó)
	// te anda porque roque es el único personaje pero y si hubiera otro??
	// (fijate que en comida lo hiciste bien)
	method teEncontro(alguien) {
		roque.darDeComer()
	}

}


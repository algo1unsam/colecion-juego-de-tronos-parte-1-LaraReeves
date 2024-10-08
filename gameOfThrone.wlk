object castillo {
	const property artefactos = #{}
		
	method agregarArtefactos(_artefactos) {
		artefactos.addAll(_artefactos)		
	}
}

object dany {
	const property artefactos = #{}
	var property capacidad = 2
	const casa = castillo
	const property historia = []

	method encontrar(artefacto) {
		if(artefactos.size() < capacidad) {
			artefactos.add(artefacto)
		}
		historia.add(artefacto)
	}
	
	method volverA(lugar) {
		lugar.agregarArtefactos(artefactos)
		artefactos.clear()
	}	
	
	method posesiones() = self.artefactos() + casa.artefactos()
	method tiene(artefacto) = self.posesiones().contains(artefacto)	
}

object libro {}
object espada{}
object collar {}
object armadura {}
class EnfermedadInf{
	var celulasAmenazadas
	
	constructor (unasCelulasAmenazadas) {
	self.setCelulasAmenazadas(unasCelulasAmenazadas)
	}

	method setCelulasAmenazadas(unasCelulasAmenazadas){
		celulasAmenazadas = unasCelulasAmenazadas
	}
	
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
	
	method reproducir(){
		return 2*celulasAmenazadas
	}
	
	method modificarTemperatura(persona){
	 return (persona.temperatura() + (1/1000 * self.reproducir()))>45
	}
	
	method esAgresiva(persona){
		return self.celulasAmenazadas() > 0.1* persona.celulasDelCuerpo()
	}
	
}

class EnfermedadAuto{
	var celulasAmenazadas
	
	constructor (unasCelulasAmenazadas){
	self.setCelulasAmenazadas(unasCelulasAmenazadas)
	}

	method setCelulasAmenazadas(unasCelulasAmenazadas){
		celulasAmenazadas = unasCelulasAmenazadas
	}
	
	method celulasAmenazadas(){
		return celulasAmenazadas
	}
	
	method modificarTemperatura(persona){
		return persona.celulasDelCuerpo() - self.celulasAmenazadas()
	}
	
	method esAgresiva(persona){
		return persona.tiempo() > 30
	}
}


class Persona{
	var temperatura = 36
	var celulasDelCuerpo
	var enfermedades

	constructor (unasCelulasDelCuerpo, listaEnfermedades){
	self.setCelulasDelCuerpo(unasCelulasDelCuerpo)
	self.setEnfermedades(listaEnfermedades)
	}

	method setCelulasDelCuerpo(unasCelulasDelCuerpo){
		celulasDelCuerpo = unasCelulasDelCuerpo
	}
	
	method setEnfermedades(listaEnfermedades){
		enfermedades = listaEnfermedades
	}
	method temperatura(){
		return temperatura
	}
	
	method celulasDelCuerpo(){
		return celulasDelCuerpo
	}
	
	
	method contraerEnfermedad(enfermedad){
		enfermedades.add(enfermedad)
		
	}
	
	method enfermedades(){
		return enfermedades
	}
}


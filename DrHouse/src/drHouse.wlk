class EnfermedadInf{
	var celulasAmenazadas
	var dias
	
	
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

	method esAgresiva(persona){
		return self.celulasAmenazadas() > 0.1* persona.celulasDelCuerpo()
	}
	
	method dias(){
		return dias
	}
	
	method afectarA(persona){
	persona.aumentartemperatura(1/1000 * self.reproducir())
	}

}

class EnfermedadAuto{
	var celulasAmenazadas
	var dias
	
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
	
	method dias(){
		return dias
	}
	
	method afectarA(persona){
		persona.disminuirCelulas()
	}
}


class Persona{
	var temperatura = 36
	var celulasDelCuerpo
	var enfermedades = []


	constructor (unatemperatura,unasCelulasDelCuerpo, listaEnfermedades){
	temperatura = unatemperatura
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
	
	method viveUnDia(){
		enfermedades.forEach({enfermedad => enfermedad.afectarA(self) 
			
		})
		
	}
	
	method aumentarTemperatura(grados){
		temperatura = temperatura + grados
	}
	
	method disminuirCelulas(celulas){
		celulasDelCuerpo = celulasDelCuerpo - celulas
	}
	
	method estaEnComa(){
		return temperatura == 45
	}
	 
}

class Medico inherits Persona {
	var dosis
	
	constructor (temp, cantCelu,unaDosis) = super (temp,cantCelu) {
		dosis = unaDosis
	}
}


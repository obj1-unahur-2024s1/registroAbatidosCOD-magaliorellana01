object registroAbatidosCOD {
	var dias =  []
	method cantidadDeDiasRegistrados(){
		return dias.size()
	}
	
	method estaVacioElRegistro(){
		return dias.isEmpty()
	}
	
	method algunDiaAbatio(cantidad){
		return dias.find({a => a.cantidadAbatidos() == cantidad})
	}
	
	method primerValorDeAbatidos(){
		return dias.first().cantidadAbatidos()
	}
	
	method ultimoValorDeAbatidos(){
		return dias.last().cantidadAbatidos()
	}
	
	method maximoValorDeAbatidos(){
		return dias.max().cantidadAbatidos() //reveer
	}
	
	method totalAbatidos(){
		return dias.sum({a => a.cantidadAbatidos()})
	}
	
	method cantidadDeAbatidosElDia(dia){
		return dia.cantidadAbatidos()
	}
	
	/*method ultimoValorDeAbatidosConSize(){
        return dias.get(dias.size() -1).first()
    } */
	
    
	method diasConAbatidosSuperioresA(cuanto){
		return dias.filter({a => a.cantidadAbatidos() > "cuanto"})
	}
	
	 method valoresDeAbatidosPares(){
	 	return dias.filter({a => a.cantidadAbatidos().even()})
	 }
	
	method abatidosSumando(cantidad){
		return dias.map({a => a.cantidadAbatidos() + "cantidad"})
	}
	
	method abatidosEsAcotada(n1,n2){
		return dias.any({a => a.cantidadAbatidos().between(n1,n2)})
	}
	
	method algunDiaAbatioMasDe(cantidad){
		return dias.any({a => a.cantidadAbatidos() > cantidad})
	}
	
	method todosLosDiasAbatioMasDe(cantidad){
		return dias.all({a => a.cantidadAbatidos() > cantidad})
	}
	
	method cantidadAbatidosMayorALaPrimera(){
		return dias.filter({a => a.cantidadAbatidos() > self.primerValorDeAbatidos() })
	}
	
}
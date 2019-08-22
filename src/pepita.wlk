object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia.between(500,1000)
	}
	method cuantoQuiereVolar(){
		return self.vueloBaseDeKilometros()+
		self.plusPorEstarEntre()+self.plusPorSerMultiplo()
		
	}
	
	method plusPorEstarEntre(){
		if(energia.between(300,400)){
			return 10	
		} else{
			return 0	
		} 
	}
	
	method esMultiplo(numero,multiplo){
		return numero % multiplo == 0
	}
	
	method plusPorSerMultiplo(){
		if(self.esMultiplo(energia,20)){
			return 15	
		}else {
			return 0
		}
	}
	
	method vueloBaseDeKilometros(){
		return energia/5
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	//method haceLoQueQuieras(){
	//}


}
	

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}
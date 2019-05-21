import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	
	var property peso = 100
	var property tieneSed = false
	
	
	
	method tieneHambre(){return peso < 200}
	
	method comer(kilos){ if (self.tieneHambre()){
							peso += kilos / 2 
							tieneSed = true}
						
						 else {self.error("No tengo hambre")}
	} 


	method beber(){tieneSed = false 
				   peso-= 1
	}
	
	method caminar(){
		peso= 50.max(peso * 0.95)
	}
	
	
	method subir(){
		position = position.up(1)
		self.caminar()
		
	}
	
	method bajar(){
		position = position.down(1)
		self.caminar()
	}
	
	method derecha(){
		position = position.right(1)
		self.caminar()
	} 
	
	method izquierda(){
		position = position.left(1)
		self.caminar()
	}
}



class Gallina {
	var property position = game.at(4,5)
	const property image = "gallina.gif"
	var property peso = 4
	var property vecesQueComio = 0
	
	
	method comer(comio){ vecesQueComio+= comio  }
	
	method tieneSed() = vecesQueComio == 2   || vecesQueComio == 5 
	
	method tieneHambre(){
		return vecesQueComio.even()	
	}
	 
	 
	method subir(){
		position = position.up(1)
	
	}
	
	method bajar(){
		position = position.down(1)
		
	}
	
	method derecha(){
		position = position.right(1)
		
	} 
	
	method izquierda(){
		position = position.left(1)
		
	}
}
	
	
	
class Comedero {
	var property position = game.at(10,10)
	const property image = "comedero.gif"
	
	}

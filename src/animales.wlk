import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	
	var property peso = 200
	var property tieneSed = false
	
	method comer(kilos){ peso += kilos / 2 
						 tieneSed = true
	}


	method beber(){tieneSed = false 
				   peso-= 1
	}
	
}






class Gallina {
	var property position = game.at(4,5)
	const property image = "gallina.gif"
	
	var property vecesQueComio = 0
	var property tieneSed = false
	
	method comer(comio){ vecesQueComio+= comio +1 }
	
	}
	
	
	
/*class Comedero {
	var property position = game.at(6,8)
	const property image = "comedero.gif"
	
	}*/

import blancosdeataque.*
class Plagas {
	var property poblacion
	var property nivelDeDanio //nivel de daño al atacar
	var property transmiteEnfermedades
	
	
	method ataca(elemento){
		elemento.recibeAtaque(self) 
	}
	
	method transmiteEnfermedades(){
		return poblacion>=10
	}
	method efecto(){
		poblacion*=1.1
	}
}
class Cucarachas inherits Plagas{
	var property peso
	
	override method nivelDeDanio(){
		return poblacion/2
	}
	override method transmiteEnfermedades(){
		
		return super() and peso>=10
	}
	override method efecto(){
		super()
		peso+=2
	}
	
}
class Pulgas inherits Plagas{
		
		
	override method nivelDeDanio(){
		return poblacion*2
	}

	
}
class Garrapatas inherits Plagas{
		
	
	override method nivelDeDanio(){
		return poblacion*2
	}
	override method efecto(){
		poblacion+=1.2
		
	}
	
	
	
}
class Mosquitos inherits Plagas{
	
		override method nivelDeDanio(){
		return poblacion
	}
	override method transmiteEnfermedades(){
		
		return super() and poblacion%3==0
	}
	
}
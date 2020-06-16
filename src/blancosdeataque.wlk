import plagas.*
class Elementos {
		var property esBueno
		//var property recibeAtaque
	method recibeAtaque(plaga){
		
	}
}
class Hogar inherits Elementos{
	
	var property nivelDeMugre
	var property confortQueOfrece
	
	override method esBueno(){
		return self.nivelDeMugre()/2 <= self.confortQueOfrece()
	}
	
	override method recibeAtaque(plaga){
		nivelDeMugre+= plaga.nivelDeDanio()
	}
	
	
	
}
class Huerta inherits Elementos{
	var property capacidadDeProduccion
	override method esBueno(){ // esto hay que corregirlo
		return	capacidadDeProduccion>=1
	}
	override method recibeAtaque(plaga){
		capacidadDeProduccion-= plaga.nivelDeDanio()*0.1
		if(plaga.transmiteEnfermedades()){
			capacidadDeProduccion-=10
		}
	}
	
	
	
	}
	
class Mascota inherits Elementos{
	var property nivelDeSalud
	
	override method esBueno(){ // esto hay que corregirlo
		return	nivelDeSalud>250
	}
	override method recibeAtaque(plaga){
		if(plaga.transmiteEnfermedades()){
			nivelDeSalud-=plaga.nivelDeDanio()
		}
	}
	
}
class Barrios {
	var elementos=[]
	 method agregarElemento(el){
		elementos.add(el)
	}
	method esCopado(){
	return 	elementos.count({cosa=>cosa.esBueno()}) > elementos.count({cosa=> not cosa.esBueno()})
	}
}


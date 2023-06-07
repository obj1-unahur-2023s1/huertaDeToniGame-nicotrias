import pachamama.*

class Planta{

	var property image
	
	method regate()
	method estaLista()
	method valor()
	method tieneGluten()= false
	method estaAgradecida()= pachamama.estaAgradecida()
}


class Maiz inherits Planta{
	var esBebe = true
	
	method esBebe() = esBebe
	
	method initialize(){
		image = "maiz_bebe.png"
	}
	
	override method regate(){
		esBebe = false
		image = "maiz_adulto.png" 
	}
	override method estaLista()= not esBebe
	
	override method valor()=if(self.estaAgradecida())180 else 150
	
	
	
}


class Trigo inherits Planta(image = "trigo_0.png"){
	var evolucion = 0
	var vecesRegada = 0
	
	override method regate(){
		if(self.estaAgradecida()){
			vecesRegada ++
		}
		vecesRegada ++
		evolucion = vecesRegada % 4
		image = "trigo_" + evolucion + ".png"
	}
	
	override method estaLista()= evolucion >= 2

	override method valor()=if(evolucion == 2)100 else 200
	
	override method tieneGluten()= true
}
	
class Tomaco inherits Planta{
	
	method initialize(){
		image = "tomaco_ok.png" //if not estaAgradecida tomaco_podrido...
	}
	
	override method regate(){}
	
	override method valor()=80
	
	override method estaLista()= not self.estaAgradecida()
}
	


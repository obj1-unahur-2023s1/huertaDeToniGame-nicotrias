import wollok.game.*
import plantas.*

object toni {
	const property image = "toni.png"
	var property position = game.center() // new Position(x=1,y=2)
	const plantasSembradas = []	
	const plantasCosechadas = []
	var monedas = 0

	method plantar(unaPlanta){
		plantasSembradas.add(unaPlanta)
	}
	
	method regarLasPlantas(){
		plantasSembradas.forEach({planta => planta.regate()})
	}
	
	method cosecharTodo(){
		self.plantasListas().forEach({planta => self.cosechar(planta)})
	}	
	
	method cosechar(unaPlanta){
		plantasSembradas.remove(unaPlanta)
		plantasCosechadas.add(unaPlanta)
	}
	
	method plantasListas()= plantasSembradas.filter({p => p.estaLista()})
	
	method venderCosecha(){
		monedas += self.valorDeCosecha()
		plantasCosechadas.clear()
	}
	
	method valorDeCosecha()= plantasCosechadas.sum({ p => p.valor()})
	
	method monedas()= monedas
	
	method cantidadPlantasCosechadas()= plantasCosechadas.size()
	
	method paraCuantosDiasLeAlcanza(){
		return (monedas + self.valorDeCosecha()).div(200) 
	}
	
	method cuantoHayParaCeliacos()= 
		self.plantasListas().count({p => not p.tieneGluten() })
	
	method convieneRegar()= plantasSembradas.any({ p => not p.estaLista()})
}
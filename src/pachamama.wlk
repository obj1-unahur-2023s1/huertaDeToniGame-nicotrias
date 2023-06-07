import wollok.game.*

object pachamama {
	var nivelDeAgradecimiento = 10
	var property position = game.origin()
	var property image = "pachamama-agradecida.png"
	
	method llover(){
		nivelDeAgradecimiento += 5
	}
	
	method tirarBasura(){
		nivelDeAgradecimiento = 0.max(nivelDeAgradecimiento - 10)
	}

	method fumigar(){
		nivelDeAgradecimiento = 0
	}
	
	method abonar(){
		nivelDeAgradecimiento *= 2
	}
	
	method estaAgradecida() = nivelDeAgradecimiento >= 10
	
	
}

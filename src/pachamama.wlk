import wollok.game.*

object pachamama {
	var nivelDeAgradecimiento = 10
	var property position = game.origin()
	
	method image()=if(self.estaAgradecida())"pachamama-agradecida.png" else "pachamama_enojada_opt.png"
	
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

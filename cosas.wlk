import personajes.*


object ballesta {
  var flechas = 10

  method atacarA_SiHayFLechas(objeto) {
    if (flechas > 0)
    objeto.recibirAtaque(flechas / 10)
    flechas = flechas -1
  }

  method estaCargada() {return flechas > 0}
  method potencia() {return 4}
}

object jabalina {
  var cargada = true

  method atacar() {
    cargada = false
  }

  method potencia() {return 30}
  method estaCargada() {return cargada}
}

object ametralladora {
    var balas = 200
    var numeroDeUsos = 0

    method registrarUso() {
      balas = balas - (self.potencia() / 2)
      numeroDeUsos = numeroDeUsos + 1
    }

    method balas() {return balas}
    method potencia() {return 50}
    method estaCargada() {return balas > 0}
    method numeroDeUsos() {return numeroDeUsos}
}

object castillo {
  var nivelDeDefensa = 150

  method recibirAtaque(intensidad){
    nivelDeDefensa = nivelDeDefensa - intensidad
  }

  method recibirTrabajo() {
    nivelDeDefensa = (nivelDeDefensa + 20).min(200)
  }

  method altura() {return 20}
  method valor() {return nivelDeDefensa / 5}
  method nivelDeDefensa() {return nivelDeDefensa}
}



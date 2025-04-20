import cosas.*

object luisa {
    var personajeActivo = null

    method aparece(elemento) {
        personajeActivo.encontrar(elemento)
    }

    method asignarPersonaje(personaje) {
        personajeActivo = personaje
    }
}

object floki {
    var arma = ametralladora

    method encontrar(elemento) {
        elemento.recibirAtaque(arma.potencia())
        arma.registrarUso()
    }

    method cambiarArmaPor_(otroArma) {
      arma = otroArma
    }

    method arma() {return arma}
}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = null

    method encontrar(elemento) {
        valorRecolectado = valorRecolectado + elemento.valor()
        ultimoElemento = elemento
    }

    method esFeliz() {return valorRecolectado == 50 || ultimoElemento.altura() >= 10}
}

object aurora {
  var estaViva = true

  method recibirAtaque(intensidad) {
    if (intensidad >= 10)  estaViva = false
  }

  method altura() {return 1}
  method valor() {return 15}
}

object tipa {
  var altura = 8

  method cambiarAltura(valorNuevo) {
    altura = valorNuevo
  }

  method valor() {return altura * 2}
  method altura() {return altura}
}
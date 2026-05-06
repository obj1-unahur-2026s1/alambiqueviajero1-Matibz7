object alambiqueVeloz {
  var property combustible = 100
  method esRapido() = true
  method sufrirConsecuencias() { combustible -= 20 }
  method peso() = 800
}

object antiguallaBlindada {
  var property cantidadGangsters = 4
  method combustible() = 200 // Gran tanque[cite: 36]
  method esRapido() = cantidadGangsters < 3 // Si hay muchos, es lento[cite: 36]
  method sufrirConsecuencias() { cantidadGangsters += 1 }
  method peso() = 2000
}

object superConvertible {
  var property estaEnModoDeportivo = true
  method combustible() = 80
  method esRapido() = estaEnModoDeportivo
  method sufrirConsecuencias() { estaEnModoDeportivo = !estaEnModoDeportivo }
  method peso() = if (estaEnModoDeportivo) 1000 else 1800
}
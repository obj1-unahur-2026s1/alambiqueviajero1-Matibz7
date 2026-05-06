import vehiculos.*
import luke.*

object paris {
  method recuerdo() = "Llavero de la Torre Eiffel"
  method puedeEntrar(unVehiculo) = unVehiculo.combustible() > 50
}

object buenosAires {
  var property presidenteActual = "Presidente X"
  
  method recuerdo() {
    return if (presidenteActual == "Presidente A") "Mate con yerba" else "Mate sin yerba"
  }
  method puedeEntrar(unVehiculo) = unVehiculo.esRapido()
}

object bagdad {
  var property recuerdoActual = "Bidón con petróleo"
  method recuerdo() = recuerdoActual
  method puedeEntrar(unVehiculo) = true // Sin restricciones[cite: 36]
}

object lasVegas {
  var property lugarHomenajeado = paris
  
  method recuerdo() = lugarHomenajeado.recuerdo()
  method puedeEntrar(unVehiculo) = lugarHomenajeado.puedeEntrar(unVehiculo)
}

// Nuevo destino: Tokio
object tokio {
  method recuerdo() = "Figura de Godzilla"
  method puedeEntrar(unVehiculo) = unVehiculo.peso() < 1500 // Restricción por peso[cite: 36]
}
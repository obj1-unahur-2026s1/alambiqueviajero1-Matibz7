import lugares.*
import vehiculos.*

object luke {
  var vehiculoActual = alambiqueVeloz
  var recuerdoDestacado = "Ninguno"
  var cantidadLugaresVisitados = 0 // Usamos un contador en vez de lista.size()

  method viajarA(unLugar) {
    if (unLugar.puedeEntrar(vehiculoActual)) {
      // Actualizamos el recuerdo (el viejo se pisa/tira)
      recuerdoDestacado = unLugar.recuerdo()
      
      // Incrementamos el contador de visitas
      cantidadLugaresVisitados = cantidadLugaresVisitados+1
      
      //El vehículo sufre las consecuencias
      vehiculoActual.sufrirConsecuencias()
    }
  }

  method cantidadDeLugaresVisitados() = cantidadLugaresVisitados
  method ultimoRecuerdo() = recuerdoDestacado
  
  method cambiarVehiculo(nuevoVehiculo) {
    vehiculoActual = nuevoVehiculo
  }
}
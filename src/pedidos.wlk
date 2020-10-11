import rodados.*
class Pedidos {
	
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantPasajeros
	const colores = #{}
	
	method agregarTodos(lista){ colores.addAll(lista)}
	method velocidadRequerida(){ return distanciaARecorrer / tiempoMaximo}
	method satisfacePedido(auto){ return auto.velMax() >= self.velocidadRequerida() and auto.capacidad() >= cantPasajeros 
		and not colores.any({ c => c == auto.color()})
	}
	method acelerar(){ tiempoMaximo = tiempoMaximo  - 1}
	method relajar(){ tiempoMaximo = tiempoMaximo  + 1}
}

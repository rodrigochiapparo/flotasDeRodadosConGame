import wollok.game.*
class Corsa {
	var property color
	var property position 
	var property image = 'autitorojo.png'
	var property posiciones = []
	
	method capacidad(){ return 4}
	method velMax(){ return 150}
	method peso(){ return 1300}

	
	method pasoPor(posicion){ return posiciones.contains(posicion) }
	method pasoPorFila(numero){ return posiciones.map({ p => p.x() }).contains(numero)}
	method recorrioFilas(lista){ return lista.all({ numero => self.pasoPorFila(numero)})}
	
	method moveteIzquierda(){ self.position(self.position().left(1))}
	method moveteArriba(){  self.position(self.position().up(1))}
	method moveteAbajo(){  self.position(self.position().down(1))}
	method moveteDerecha(){  self.position(self.position().right(1))}
	
	method cambiarAVerde(){ image = 'coche-verde-.png'}
	method cambiarAAzul() { image = 'coche-azul.png'}
	method cambiarARojo() { image = 'autitorojo.png'}
}
class Kwid {
	var property tieneTanqueAd = true
	
	method tieneTanque(){ tieneTanqueAd = true }
	method noTieneTanque() { tieneTanqueAd = false}
	method capacidad(){ return if (not tieneTanqueAd) {4} else { 3}}
	method velMax(){ return if (not tieneTanqueAd) {110} else {120}}
	method peso(){ return if (not tieneTanqueAd) {1200} else {1200 + 150}}
	method color(){ return azul}
	
	
}

class Traffic {
	var property interior
	var property motor
	
	method setMotor(nuevo){ motor = nuevo}
	method motor(){ return motor}
	method setInterior(nuevo){ interior = nuevo}
	method interior(){ return interior}
	method capacidad(){ return interior.capacidad()}
	method velMax(){ return motor.velMax()}
	method peso(){ return interior.peso() + motor.peso() + 4000}
	method color(){ return blanco}
	
	
}

object interiorComodo{
	
	method capacidad(){ return 5}
	method peso(){ return 700}
}

object interiorPopular {
	
	method capacidad(){ return 12}
	method peso() { return 1000}
}

object motorPulenta {
	
	method peso() { return 800}
	method velMax(){ return 130}
}

object motorBataton{
	
	method peso(){ return 500}
	method velMax(){ return 80}
}

class AutosEspeciales {
	var property capacidad
	var property velMax
	var property peso
	var property color	
	
	
}

object azul{}
object rojo {}
object verde{}
object blanco{}
object negro{}

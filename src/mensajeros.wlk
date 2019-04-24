import destinos.*
import transporte.*
object mensajeria {
	var mensajero=#{}
	method contratar(alguien) { mensajero.add(alguien) 	}
	
method despedir(alguien){mensajero.remove(alguien)}
}
object paquete{
	var property estapago=true
	var property destino =puenteDeBrooklyn
		
	}



object roberto{
var property transporte=bicicleta
var property pesoPropio=0

method transporte(transporte_){	transporte=transporte_}
	
method peso()=transporte.peso()+pesoPropio

method puedeLlamar(){return false}
	}


object chuck{
method peso()=900
method puedeLlamar(){return true}
}

object neo {
	 var property tieneCredito=true
	 method peso()=0
	 method puedeLlamar(){	return self.tieneCredito()	 
	 	
	 }
	
}
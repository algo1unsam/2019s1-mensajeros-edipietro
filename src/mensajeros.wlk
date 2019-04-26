import destinos.*
import transporte.*
object mensajeria {
	var property mensajero=[]
method contratar(alguien) { mensajero.add(alguien)}
method despedir(alguien){mensajero.remove(alguien)}
method despedirAtodos(){mensajero.clear()}
method tieneMasDe2Mensajeros(){	return(mensajero.size()>2)}
method paquetePuedeSerEntregadoXPrimero(destino){return destino.dejaPasar(mensajero.first())}
method pesoDelUltimo(){return mensajero.last().peso()}
//parte 3

method algunoPuedeEntregar(paquete){return mensajero.any{unempleado =>paquete.puedeSerEntregado(mensajero)}}
}
object paquete{
	var property estapago=true
	var property destino =puenteDeBrooklyn	
	method puedeSerEntregado(mensajero){
	return destino.dejaPasar(mensajero)&& self.estapago()
		}
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
	 method puedeLlamar(){	return self.tieneCredito()}
}
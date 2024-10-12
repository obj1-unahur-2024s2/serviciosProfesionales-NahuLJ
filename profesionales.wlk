import asociacion.*
class ProfesionalVinculado {
	const universidad
	var importe

	method universidad() = universidad

	method honorariosPorHora() = universidad.honorariosPorHora()
	
	method provincias() = [universidad.provincia()] 

	method importe() = importe

	method cobrarImporte(){
		self.gastarDeImporteCantidad(importe / 2)
		self.donarAUniversidadCantidad(importe)
	}

	method gastarDeImporteCantidad(cantidad){
		importe = 0.max(importe - cantidad)
	}

	method donarAUniversidadCantidad(cantidad){
		universidad.recibirDonacionDe(cantidad)
		importe = 0.max(importe - cantidad)
	}

	method recibirImporteDe(cantidad){
		importe += cantidad
	}
}

class ProfesionalAsociado {
	const universidad 
	var importe

	method universidad() = universidad
	
	method honorariosPorHora() = 3000
	
	method provincias() = ["Entre Rios" ,"Santa Fe", "Corrientes"]

	method importe() = importe

	method cobrarImporte(){
		asociacion.recibirRecaudacionDe(importe)
		importe = 0
	}

	method recibirImporteDe(cantidad){
		importe += cantidad
	}
}

class ProfesionalLibre {
	const universidad
	var property honorariosPorHora
	const provincias
	var importe

	method universidad() = universidad

	method provincias() = provincias

	method importe() = importe

	method cobrarImporte(){}

	method pasarDinero(unProfesional,cantidad){
		if(importe >= cantidad){
			unProfesional.recibirImporteDe(cantidad)
			importe = importe - cantidad
		}
	}

		method recibirImporteDe(cantidad){
		importe += cantidad
	}

}
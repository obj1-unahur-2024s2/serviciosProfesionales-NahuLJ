class ProfesionalVinculado {
	const universidad

	method universidad() = universidad

	method honorariosPorHora() = universidad.honorariosPorHora()
	
	method provincias() = [universidad.provincia()] 

}

class ProfesionalAsociado {
	const universidad 
	
	method universidad() = universidad
	
	method honorariosPorHora() = 3000
	
	method provincias() = ["Entre Rios" ,"Santa Fe", "Corrientes"]
}

class ProfesionalLibre {
	const universidad
	var property honorariosPorHora
	const provincias

	method universidad() = universidad

	method provincias() = provincias
}
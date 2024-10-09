class Empresa{
	const property empleados = []
	var property honorariosPorHora

	method contratar(unProfesional){
		empleados.add(unProfesional)
	}

	method cantidadEmpleadosDeUniversidad(unaUniversidad) = 
		empleados.count({empleado => empleado.universidad() == unaUniversidad}) 

	method profesionalesCaros() = 
		empleados.filter({empleado => empleado.honorariosPorHora() > honorariosPorHora}).asSet()

	method universidadesFormadoras() = empleados.map({empleado => empleado.universidad()}).asSet()

	method profesionalMasBarato() = empleados.min({empleado => empleado.honorariosPorHora()})

	method esDeGenteAcotada() = empleados.all({empleado => empleado.provincias().size() <= 3})
}
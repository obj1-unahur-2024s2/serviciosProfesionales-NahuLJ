import universidades.*
class Empresa{
	const property empleados = []
	var property honorariosPorHora
	const property clientes = []

	method contratar(unProfesional){
		empleados.add(unProfesional)
	}

	method agregarCliente(unCliente){
		clientes.add(unCliente)
	}
	
	method cantidadEmpleadosDeUniversidad(unaUniversidad) = 
		empleados.count({empleado => empleado.universidad() == unaUniversidad}) 

	method profesionalesCaros() = 
		empleados.filter({empleado => empleado.honorariosPorHora() > honorariosPorHora}).asSet()

	method universidadesFormadoras() = empleados.map({empleado => empleado.universidad()}).asSet()

	method profesionalMasBarato() = empleados.min({empleado => empleado.honorariosPorHora()})

	method esDeGenteAcotada() = empleados.all({empleado => empleado.provincias().size() <= 3})

	method puedeSatisfacerA(unSolicitante) = 
		empleados.any({empleado => unSolicitante.puedeSerAtendidaPor(empleado)})

	method empleadosQuePuedeSatisfacerA(unSolicitante) = 
		empleados.filter({empleado => unSolicitante.puedeSerAtendidaPor(empleado)})
	
	method darSevicio(persona){
		if (self.puedeSatisfacerA(persona)){
			self.empleadosQuePuedeSatisfacerA(persona).first().cobrarImporte()
			self.agregarCliente(persona)
		}
	}

	method cantidadClientes() = clientes.size()

	method tieneDeClienteA(unSolicitante) = clientes.contains(unSolicitante)

	method esPocoAtractivo(unProfesional) = 
		self.hayEmpleadosQueTrabajenEnLasProvincias(unProfesional.provincias()) and
		self.hayAlgunoQueCobreMenosQue(unProfesional)

	method hayEmpleadosQueTrabajenEnLasProvincias(unasProvincias) = 
	unasProvincias.asSet() == unasProvincias.asSet().intersection(self.provinciasDeLosEmpleados()) 

	method hayAlgunoQueCobreMenosQue(unProfesional) = 
		empleados.any({empleado => empleado.honorariosPorHora() < unProfesional.honorariosPorHora()})

	method provinciasDeLosEmpleados() = empleados.flatMap({empleado => empleado.provincias()}).asSet()
	
}
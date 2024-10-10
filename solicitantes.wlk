class Persona{
  const property provincia
  
  method puedeSerAtendidaPor(profesional) = profesional.provincias().contains(provincia)
}

class Institucion{
  const property universidades 

  method puedeSerAntendidaPor(profesional) = universidades.contains(profesional.universidad())
}

class Club {
	const property provincias

	method puedeSerAntendidaPor(profesional) = 
		provincias.any({provincia => profesional.provincias().contains(provincia)})
}
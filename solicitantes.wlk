class Persona{
  const property provincia
  
  method puedeSerAtendidaPor(profesional) = profesional.provincias().contains(provincia)
}

class Institucion{
  const property universidades 

  method puedeSerAtendidaPor(profesional) = universidades.contains(profesional.universidad())
}

class Club {
	const property provincias

	method puedeSerAtendidaPor(profesional) = 
		provincias.any({provincia => profesional.provincias().contains(provincia)})
}
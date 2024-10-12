class Universidad{
	const provincia 
  var property honorariosPorHora
  var totalDonaciones = 0

  method provincia() = provincia

  method totalDonaciones() = totalDonaciones

  method recibirDonacionDe(cantidad){
    totalDonaciones += cantidad
  }
}
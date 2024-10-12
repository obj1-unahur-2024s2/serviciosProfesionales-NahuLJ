object asociacion{
  var totalRecaudado = 0

  method totalRecaudado() = totalRecaudado

  method recibirRecaudacionDe(cantidad){
    totalRecaudado += cantidad
  }
}
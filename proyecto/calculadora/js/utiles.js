// Constantes utilizadas
var ANIOS_1 = 20;
var ANIOS_2 = 10;
var ANIOS_3 = 5;
var ANIOS_4 = 2;

// Se le asigna una funcion a la propiedad decimal
// del objeto prototype de la clase Number con el
// objetivo que se puedan truncar los decimales a
// la longitud deseada
Number.prototype.decimal = function (cantidadDecimales) {
  var potencia = Math.pow(10,cantidadDecimales);
  var numero = parseInt(this * potencia) / potencia;
  var numeroPartido = numero.toString().split('.');
  if(cantidadDecimales == 0) {
    return numeroPartido[0];
  } else {
    if(numeroPartido.length > 1)
        return numeroPartido[0] + "." + (numeroPartido[1] + "00000000").substr(0,cantidadDecimales);  
    else
        return numeroPartido[0] + "." + ("00000000").substr(0,cantidadDecimales);  
  }
}

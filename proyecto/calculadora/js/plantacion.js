// Clase que representa una Plantacion
function Plantacion(codigo, arbol) {
  this.codigo = codigo;
  this.arbol = arbol;
  this.cantidadArbolesPlantados = new Number(0);
  this.cantidadTnsCapturadas = new Number(0);
  this.incrementarCantidadArbolesPlantados = incrementarCantidadArbolesPlantados;
  this.decrementarCantidadArbolesPlantados = decrementarCantidadArbolesPlantados;
  this.totalizarTnsCapturadas = totalizarTnsCapturadas;
}

// Metodo que incrementa la plantacion de arboles
function incrementarCantidadArbolesPlantados(anios) {

  this.cantidadArbolesPlantados += 1;
  this.totalizarTnsCapturadas(anios);
}

// Metodo que incrementa la plantacion de arboles
function decrementarCantidadArbolesPlantados(anios) {

  if (this.cantidadArbolesPlantados > 0) {

    this.cantidadArbolesPlantados -= 1;
    this.totalizarTnsCapturadas(anios);
  }
}

// Metodo que totaliza la cantidad de toneladas
// de CO2 capturadas con los arboles plantados
function totalizarTnsCapturadas(anios) {

  this.cantidadTnsCapturadas = this.arbol.obtenerCantidadToneladasCapturadas(anios) * this.cantidadArbolesPlantados;
}

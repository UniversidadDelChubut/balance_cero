// Clase que representa un Arbol
function Arbol(codigo, nombre, densidad, volumenVeintenal) {
  this.codigo = codigo;
  this.nombre = nombre;
  if (new Number(densidad) < 0) {
    this.densidad = 0;
  }
  else {
    this.densidad = densidad;
  }
  if (new Number(volumenVeintenal) < 0) {
    this.volumenVeintenal = 0;
  } else {
    this.volumenVeintenal = volumenVeintenal;
  }
  this.obtenerVolumen = obtenerVolumen;
  this.obtenerPeso = obtenerPeso;
  this.obtenerCantidadCarbono = obtenerCantidadCarbono;
  this.obtenerCantidadToneladasCapturadas = obtenerCantidadToneladasCapturadas;
}

// Metodo que permite obtener el volumen del arbol
function obtenerVolumen(anios) {

  aniosSeleccionados = new Number(anios);
  if ((aniosSeleccionados != ANIOS_1) &&
      (aniosSeleccionados != ANIOS_2) &&
      (aniosSeleccionados != ANIOS_3) &&
      (aniosSeleccionados != ANIOS_4)) {
    return (new Number(this.volumenVeintenal)).decimal(3);
  } else {
    return (new Number(this.volumenVeintenal * aniosSeleccionados / ANIOS_1)).decimal(3);
  }
}

// Metodo que obtiene el peso del arbol
function obtenerPeso(anios) {

  aniosSeleccionados = new Number(anios);
  if ((aniosSeleccionados != ANIOS_1) &&
      (aniosSeleccionados != ANIOS_2) &&
      (aniosSeleccionados != ANIOS_3) &&
      (aniosSeleccionados != ANIOS_4)) {
    return (new Number(this.densidad * this.obtenerVolumen(ANIOS_1))).decimal(5);
  } else {
    return (new Number(this.densidad * this.obtenerVolumen(aniosSeleccionados))).decimal(5);
  }
}

// Metodo que obtiene la cantidad de carbono
function obtenerCantidadCarbono(anios) {

  aniosSeleccionados = new Number(anios);
  if ((aniosSeleccionados != ANIOS_1) &&
      (aniosSeleccionados != ANIOS_2) &&
      (aniosSeleccionados != ANIOS_3) &&
      (aniosSeleccionados != ANIOS_4)) {
    return (new Number(this.obtenerPeso(ANIOS_1) / 2 * 1.5)).decimal(5);
  } else {
    return (new Number(this.obtenerPeso(aniosSeleccionados) / 2 * 1.5)).decimal(5);
  }
}

// Metodo que determina la cantidad de toneladas de dioxido de carbono capturadas
function obtenerCantidadToneladasCapturadas(anios) {

  aniosSeleccionados = new Number(anios);
  if ((aniosSeleccionados != ANIOS_1) &&
      (aniosSeleccionados != ANIOS_2) &&
      (aniosSeleccionados != ANIOS_3) &&
      (aniosSeleccionados != ANIOS_4)) {
    return (new Number(this.obtenerCantidadCarbono(ANIOS_1) * 3.66)).decimal(5);
  } else {
    return (new Number(this.obtenerCantidadCarbono(aniosSeleccionados) * 3.66)).decimal(5);
  }
}

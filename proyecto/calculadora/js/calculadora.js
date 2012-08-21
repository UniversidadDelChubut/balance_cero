// Se crea el arreglo de objetos arbol que contiene
// la informacion de cada especie
var especies = new Array(6);
especies[0] = new Arbol(0,'Eucalipto',0.830,1.000);
especies[1] = new Arbol(1,'Ponderosa',0.400,0.700);
especies[2] = new Arbol(2,'Acacia Visco',1.015,0.500);
especies[3] = new Arbol(3,'Aguaribay',0.675,0.800);
especies[4] = new Arbol(4,'Algarrobo',0.730,0.500);
especies[5] = new Arbol(5,'Fresno',0.450,0.400);

// Se crea el arreglo de objetos plantacion que contiene
// la informacion de cada plantacion de arboles
var plantaciones = new Array(6);
plantaciones[0] = new Plantacion(0,especies[0]);
plantaciones[1] = new Plantacion(1,especies[1]);
plantaciones[2] = new Plantacion(2,especies[2]);
plantaciones[3] = new Plantacion(3,especies[3]);
plantaciones[4] = new Plantacion(4,especies[4]);
plantaciones[5] = new Plantacion(5,especies[5]);

// Inicializa los valores del formulario de parametros
function inicializarParametros() {

  document.formParametros.txtCarbonoLiberado.value = '0.00';
  document.formParametros.rdoAnios[0].value = ANIOS_1;
  document.getElementById('lblAnios1').innerText = ANIOS_1;
  document.formParametros.rdoAnios[0].checked = true;
  document.formParametros.rdoAnios[1].value = ANIOS_2;
  document.getElementById('lblAnios2').innerText = ANIOS_2;
  document.formParametros.rdoAnios[2].value = ANIOS_3;
  document.getElementById('lblAnios3').innerText = ANIOS_3;
  document.formParametros.rdoAnios[3].value = ANIOS_4;
  document.getElementById('lblAnios4').innerText = ANIOS_4;
}

// Determina si los parametros ingresados son validos
function parametrosValidos(e) {

  var errorMsg = 'Se encontraron los siguientes errores:\n\n';
  var error = false;
  var aniosIndicados = false;
  var teclaPresionada;
  var teclaCaracter;
  var verificadorDigito = /\d/
  var verificadorPunto = /\./

  // Se validad la tecla presionada
  if(window.event) { // Esto es para IE
    teclaPresionada = e.keyCode
  } else if(e.which) { // Esto es para Netscape/Firefox/Opera/Chrome
    teclaPresionada = e.which
  }
  teclaCaracter = String.fromCharCode(teclaPresionada);
  error = ! (verificadorDigito.test(teclaCaracter) || verificadorPunto.test(teclaCaracter));
  if (error) {
    errorMsg = errorMsg + '- La cantidad de CO2 liberado ingresada no es valida.';
  }

  // Se determina si se ingreso o no la cantidad de anios
  for(var i = 0; i < rdoAnios.length; i++) {
    if(rdoAnios[i].checked) {
      aniosIndicados = true;
    }
  }

  if ((error) || (! aniosIndicados)) {
    document.formParametros.txtCarbonoLiberado.focus();
    document.formParametros.txtCarbonoLiberado.select();
    alert(errorMsg);
    return false;
  } else {
    return true;
  }
}

function parametrosValidosRadioButton() {

  var errorMsg = 'Se encontraron los siguientes errores:\n\n';
  var error = false;
  var aniosIndicados = false;

  // se determina si la cantidad de CO2 liberado ingresada es valida
  if (! /[0-9]*\.*[0-9]*/.test(document.formParametros.txtCarbonoLiberado.value)) {
    error = true;
    errorMsg = errorMsg + '- La cantidad de CO2 liberado ingresada no es valida.';
  }

  // Se determina si se ingreso o no la cantidad de anios
  for(var i = 0; i < rdoAnios.length; i++) {
    if(rdoAnios[i].checked) {
      aniosIndicados = true;
    }
  }

  if ((error) || (! aniosIndicados)) {
    document.formParametros.txtCarbonoLiberado.focus();
    document.formParametros.txtCarbonoLiberado.select();
    alert(errorMsg);
    return false;
  } else {
    return true;
  }
}

// Obtiene los anios indicados en la interface de la calculadora
function obtenerAnios() {

  var rdoAnios = document.formParametros.rdoAnios;

  for(var i = 0; i < rdoAnios.length; i++) {
    if(rdoAnios[i].checked) {
      return rdoAnios[i].value;
    }
  }
}

// Arma y actualiza la tabla de las especies en la interface
function actualizarDivEspecies() {

  var cantidadCarbonoLiberadoCasa = new Number(document.getElementById('txtCarbonoLiberado').value).decimal(3);
  var anios = obtenerAnios();

  for (var i = 0; i < especies.length; i++) {
    document.getElementById('lblNombreEspecie' + i).firstChild.nodeValue = especies[i].nombre;
    document.getElementById('lblDensidadEspecie' + i).firstChild.nodeValue = especies[i].densidad.decimal(3);
    document.getElementById('lblVolumenEspecie' + i).firstChild.nodeValue = especies[i].obtenerVolumen(anios);
    document.getElementById('lblPesoEspecie' + i).firstChild.nodeValue = especies[i].obtenerPeso(anios);
    document.getElementById('lblCarbonoEspecie' + i).firstChild.nodeValue =especies[i].obtenerCantidadCarbono(anios);
    document.getElementById('lblTnsCO2CapturaEspecie' + i).firstChild.nodeValue = especies[i].obtenerCantidadToneladasCapturadas(anios);
    document.getElementById('lblCantidadPlantas' + i).firstChild.nodeValue = plantaciones[i].cantidadArbolesPlantados.decimal(0);
    document.getElementById('lblCantidadTnsCO2CapturadasPlantas' + i).firstChild.nodeValue = plantaciones[i].cantidadTnsCapturadas.decimal(5);
  }

  var cantidadTotalPlantas = new Number(0);
  var cantidadTotalTnsCapturadas = new Number(0);

  for (var i = 0; i < plantaciones.length; i++) {
    cantidadTotalPlantas += plantaciones[i].cantidadArbolesPlantados;
    cantidadTotalTnsCapturadas += plantaciones[i].cantidadTnsCapturadas;
  }

  document.getElementById('lblCantidadTotalPlantas').firstChild.nodeValue = new Number(cantidadTotalPlantas).decimal(0);
  document.getElementById('lblCantidadTotalTnsCO2Capturadas').firstChild.nodeValue = new Number(cantidadCarbonoLiberadoCasa - cantidadTotalTnsCapturadas).decimal(5);
}

// Incrementa la cantidad de arboles de una plantacion
function incrementarPlantacion(i) {

  plantaciones[i].incrementarCantidadArbolesPlantados(obtenerAnios());
  actualizarDivEspecies();
}

// Decrementa la cantidad de arboles de una plantacion
function decrementarPlantacion(i) {

  plantaciones[i].decrementarCantidadArbolesPlantados(obtenerAnios());
  actualizarDivEspecies();
}

// Metodo que totaliza la cantidad de toneladas
// de CO2 capturadas con los arboles plantados
function totalizarTnsCapturadasPlantaciones() {

  for (var i = 0; i < plantaciones.length; i++) {
    plantaciones[i].totalizarTnsCapturadas(obtenerAnios());
  }
}

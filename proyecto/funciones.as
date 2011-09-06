// inicializamos los totales de habitaciones
var habitaciones:Array = new Array(
	'cocina', 'dorm1', 'living', 'dorm2', 'banio', 'lavadero', 'garage'
);

var totales_hab:Object = new Object();

for(var hab:String in habitaciones) {
	totales_hab[habitaciones[hab]] = new Array(0,0);
	_root["total_kwh_" + habitaciones[hab]].text = 0;
	_root["total_gas_" + habitaciones[hab]].text = 0;
	_root["calefactor_" + habitaciones[hab] + "_calorias"].text = 0;
	
	// logica para los calefactores
	_root["calefactor_" + habitaciones[hab] + "_switch"].onRelease = function() {
		var calef = this._name.substr(0, this._name.length - length("_switch"));
		_root[calef + "_calorias"].text = datos[calef].cambiarCalorias();
		actualizarTotales();
	}
}

// inicializacion de los artefactos
for(var cod:String in datos) {
	
	//inicializamos todos los textboxes en cero
	_root[cod + "_cantidad"].text = 0;
	_root[cod + "_horas"].text    = 0;

	_root[cod + "_cantidad_mas"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_cantidad_mas"));
		datos[art].incrementarCantidad();
		_root[art + "_cantidad"].text = datos[art].cantidad.toString();
		actualizarTotales();
		trace(_root[cod] + "cantidad++");
	}
	
	_root[cod + "_cantidad_menos"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_cantidad_menos"));
		datos[art].decrementarCantidad();
		_root[art + "_cantidad"].text = datos[art].cantidad.toString();
		actualizarTotales();
	}
	
	_root[cod + "_horas_mas"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_horas_mas"));
		datos[art].incrementarHoras();
		_root[art + "_horas"].text = datos[art].getHorasMinutos();
		actualizarTotales();
	}
	
	_root[cod + "_horas_menos"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_horas_menos"));
		datos[art].decrementarHoras();
		_root[art + "_horas"].text = datos[art].getHorasMinutos();
		actualizarTotales();
	}
}

function actualizarTotales(obj) {
	var total_electrico:Number = 0;
	var total_gas:Number       = 0;
	var total_residuos:Number  = 0;
	var total_co2:Number       = 0;
	var temp:Number			   = 0;
	var temp2:Number		   = 0;

	for(var hab:String in habitaciones) {
		totales_hab[habitaciones[hab]] = new Array(0,0);
	}	
	
	for(var cod:String in datos) {
		temp  = datos[cod].calcularConsumo();
		temp2 += datos[cod].calcularCO2();
		
		switch(datos[cod].tipo) {
			case Artefacto.TIPO_ELEC:
  				total_electrico += temp;
				totales_hab[datos[cod].habitacion][0] += temp;
				_root["total_kwh_" + datos[cod].habitacion].text = totales_hab[datos[cod].habitacion][0];
			break;
			case Artefacto.TIPO_GAS:
				total_gas += temp;
				totales_hab[datos[cod].habitacion][1] += temp;
				_root["total_gas_" + datos[cod].habitacion].text = totales_hab[datos[cod].habitacion][1];
			break;
		}
	}
	
	_root.total_electrico.text = total_electrico;
	_root.total_gas.text       = total_gas;
	_root.total_residuos.text  = total_residuos;
	_root.total_co2.text 	   = temp2;
}
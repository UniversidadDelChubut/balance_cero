var habitaciones:Array = new Array(
	'cocina', 'dorm1', 'living', 'dorm2', 'banio', 'lavadero', 'garage'
);

var totales_hab:Array = new Array();

for(var hab:String in habitaciones) {
	totales_hab[hab] = new Array(0,0);
}

for(var cod:String in datos) {
	
	//inicializamos todos los textboxes en cero
	_root[cod + "_cantidad"].text = 0;
	_root[cod + "_horas"].text    = 0;

	_root[cod + "_cantidad_mas"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_cantidad_mas"));
		datos[art].incrementarCantidad();
		_root[art + "_cantidad"].text = datos[art].cantidad.toString();
		actualizarTotales();
	}
	
	_root[cod + "_cantidad_menos"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_cantidad_menos"));
		datos[art].decrementarCantidad();
		_root[art + "_cantidad"].text = datos[art].cantidad.toString();
	}
	
	_root[cod + "_horas_mas"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_horas_mas"));
		datos[art].incrementarHoras();
		_root[art + "_horas"].text = datos[art].getHorasMinutos();
	}
	
	_root[cod + "_horas_menos"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_horas_menos"));
		datos[art].decrementarHoras();
		_root[art + "_horas"].text = datos[art].getHorasMinutos();
	}
}

function actualizarTotales(obj) {
	var total_electrico:Number = 0;
	var total_gas:Number       = 0;
	var total_residuos:Number  = 0;
	var total_co2:Number       = 0;
	
	for(var cod:String in datos) {
		datos[cod].calcularConsumo();
	}
}
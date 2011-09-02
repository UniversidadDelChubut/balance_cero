for(var cod:String in datos) {
	
	//inicializamos todos los textboxes en cero
	_root[cod + "_cantidad"].text = 0;
	_root[cod + "_horas"].text    = 0;

	_root[cod + "_cantidad_mas"].onRelease = function() {
		var art = this._name.substr(0, this._name.length - length("_cantidad_mas"));
		datos[art].incrementarCantidad();
		_root[art + "_cantidad"].text = datos[art].cantidad.toString();
		actualizarTotales(datos[art]);
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
	trace(obj.codigo);
}
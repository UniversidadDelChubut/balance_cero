for(var i:String in datos)
{
	var artefacto = datos[i];
	//cantidades
	var texto_cantidad 	 	= eval(artefacto.codigo + "_cantidad");
	var btn_cantidad_mas    = eval(artefacto.codigo + "_cantidad_mas");
	var btn_cantidad_menos  = eval(artefacto.codigo + "_cantidad_menos");
	
	//horas
	var texto_horas 	 	= eval(artefacto.codigo + "_horas");
	var btn_horas_mas    = eval(artefacto.codigo + "_horas_mas");
	var btn_horas_menos  = eval(artefacto.codigo + "_horas_menos");

	
	btn_cantidad_mas.onRelease = function() {
		var art = this._name.substr(0, this._name.length - 13);
		datos[art].incrementarCantidad();
		texto_cantidad.text = datos[art].cantidad.toString();
		//recalcular
	}
	
	btn_cantidad_menos.onRelease = function() {
		var art = this._name.substr(0, this._name.length - 15);
		datos[art].decrementarCantidad();
		texto_cantidad.text = datos[art].cantidad.toString();
		//recalcular
	}
	
	btn_horas_mas.onRelease = function() {
		var art = this._name.substr(0, this._name.length - 10);
		datos[art].incrementarHoras();
		texto_horas.text = datos[art].horas.toString();
		//recalcular
	}
	
	btn_horas_menos.onRelease = function() {
		var art = this._name.substr(0, this._name.length - 12);
		datos[art].decrementarHoras();
		texto_horas.text = datos[art].horas.toString();
		//recalcular
	}
}
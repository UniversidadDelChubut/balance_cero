class Casa {
	public var habitaciones:Object;
	public var datos_hab:Object;
	public var handlers:Object;
	public var datos:Object;
	public function Casa(artefactos:Object) {
		this.habitaciones = new Object({cocina:{}, living:{}, dorm1:{}, dorm2:{}, banio:{}, lavadero:{}, garage:{}});
		this.datos_hab = new Object();
		this.datos = artefactos;
		// inicializamos los totales de habitaciones
		for (var hab in this.habitaciones) {
			this.datos_hab[hab] = new Object({total_elec:0, total_gas:0});
		}
	}
	//Casa()
	public function actualizarHabitacion(hab:String) {
		this.enlazarEventos(hab);
		this.actualizarTotales();
	}
	public function enlazarEventos(hab:String) {
		// logica para los calefactores
		_root["calefactor_"+hab+"_switch"].onRelease = function() {
			_root["calefactor_"+hab+"_calorias"].text = _root.casa.datos["calefactor_"+hab].cambiarCalorias();
			_root.casa.actualizarTotales();
		};
		// eventos para botones de cantidad y horas
		for (var cod in this.datos) {
			if (this.datos[cod].habitacion == hab) {
				_root[cod+"_cantidad_mas"].onRelease = function() {
					var art = this._name.substr(0, this._name.length-length("_cantidad_mas"));
					_root.casa.datos[art].incrementarCantidad();
					_root.casa.actualizarTotales();
				};
				_root[cod+"_cantidad_menos"].onRelease = function() {
					var art = this._name.substr(0, this._name.length-length("_cantidad_menos"));
					_root.casa.datos[art].decrementarCantidad();
					_root.casa.actualizarTotales();
				};
				_root[cod+"_horas_mas"].onRelease = function() {
					var art = this._name.substr(0, this._name.length-length("_horas_mas"));
					_root.casa.datos[art].incrementarHoras();
					_root.casa.actualizarTotales();
				};
				_root[cod+"_horas_menos"].onRelease = function() {
					var art = this._name.substr(0, this._name.length-length("_horas_menos"));
					_root.casa.datos[art].decrementarHoras();
					_root.casa.actualizarTotales();
				};
			}
		}
		//for
	}
	//enlazarEventos
	public function actualizarTotales() {
		var total_electrico:Number = 0;
		var total_gas:Number = 0;
		var total_co2:Number = 0;
		var temp:Number = 0;
		var temp2:Number = 0;
		
		//reseteo los totales de las habitaciones
		for (var hab in this.habitaciones) {
			this.datos_hab[hab] = new Object({total_elec:0, total_gas:0});
		}
				
		for (var cod in this.datos) {
			// actualizo cantidad y horas de los artefactos
			_root[cod+"_cantidad"].text = this.datos[cod].cantidad.toString();
			_root[cod+"_horas"].text = this.datos[cod].getHorasMinutos();
			//calculo consumos
			temp = this.datos[cod].calcularConsumo();
			temp2 += this.datos[cod].calcularCO2();
			switch (this.datos[cod].tipo) {
			case Artefacto.TIPO_ELEC :
				total_electrico += temp;
				this.datos_hab[this.datos[cod].habitacion].total_elec += temp;
				_root["total_kwh_"+this.datos[cod].habitacion].text = this.datos_hab[this.datos[cod].habitacion].total_elec;
				break;
			case Artefacto.TIPO_GAS :
				total_gas += temp;
				this.datos_hab[this.datos[cod].habitacion].total_gas += temp;
				_root["total_gas_"+this.datos[cod].habitacion].text = this.datos_hab[this.datos[cod].habitacion].total_gas;
				break;
			}
			//switch
		}
		//for
		//actualizo campos de totales (son fijos en todas las habitaciones)
		_root.total_electrico.text = total_electrico;
		_root.total_gas.text = total_gas;
		_root.total_co2.text = temp2;
	}
	//actualizarTotales
}
//Casa

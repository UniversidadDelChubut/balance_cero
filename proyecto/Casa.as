class Casa {
	public var habitaciones:Array;
	public var totales_hab:Object;
	public var handlers:Object;
	public var datos:Object;
	
	public function Casa(artefactos:Object){
		this.habitaciones= new Array(
			'cocina', 'dorm1', 'living', 'dorm2', 'banio', 'lavadero', 'garage'
		);
		this.totales_hab = new Object();
		this.datos = artefactos;
		
		// inicializamos los totales de habitaciones
		for(var hab:String in this.habitaciones) {
			this.totales_hab[habitaciones[hab]] = new Array(0,0);
		}
	}	//Casa()
	
	public function actualizarHabitacion(hab) {
		this.enlazarEventos(hab);
		this.actualizarTotales(hab);
	}

	public function enlazarEventos(hab:String) {
		// logica para los calefactores
		_root["calefactor_" + hab + "_switch"].onRelease = function() {
			_parent.casa.datos["calefactor_" + hab].cambiarCalorias();
			_parent.casa.actualizarTotales(hab);
		}
		
		for(var cod:String in this.datos) {
			if(this.datos[cod].habitacion == hab) {
				// eventos para botones de cantidad y horas
				_root[cod + "_cantidad_mas"].onRelease = function() {
					var art = this._name.substr(0, this._name.length - length("_cantidad_mas"));
					_root.casa.datos[art].incrementarCantidad();
					_root.casa.actualizarTotales(hab);
				}
				
				_root[cod + "_cantidad_menos"].onRelease = function() {
					var art = this._name.substr(0, this._name.length - length("_cantidad_menos"));
					_root.casa.datos[art].decrementarCantidad();
					_root.casa.actualizarTotales(hab);
				}
				
				_root[cod + "_horas_mas"].onRelease = function() {
					var art = this._name.substr(0, this._name.length - length("_horas_mas"));
					_root.casa.datos[art].incrementarHoras();
					_root.casa.actualizarTotales(hab);
				}
				
				_root[cod + "_horas_menos"].onRelease = function() {
					var art = this._name.substr(0, this._name.length - length("_horas_menos"));
					_root.casa.datos[art].decrementarHoras();
					_root.casa.actualizarTotales(hab);
				}
			}
		}	//for
	}	//enlazarEventos
		
	public function actualizarTotales(hab:String) {
		var total_electrico:Number = 0;
		var total_gas:Number       = 0;
		var total_residuos:Number  = 0;
		var total_co2:Number       = 0;
		var temp:Number			   = 0;
		var temp2:Number		   = 0;
		
		for(var cod:String in this.datos) {
			if(this.datos[cod].habitacion != hab) continue;
			
			// actualizo cantidad y horas de los artefactos
			_root[cod + "_cantidad"].text = this.datos[cod].cantidad.toString();
			_root[cod + "_horas"].text    = this.datos[cod].getHorasMinutos();
		
			//calculo consumos
			temp  = this.datos[cod].calcularConsumo();
			temp2 += this.datos[cod].calcularCO2();
			
			switch(this.datos[cod].tipo) {
				case Artefacto.TIPO_ELEC:
					total_electrico += temp;
					totales_hab[this.datos[cod].habitacion][0] += temp;
					_root["total_kwh_" + this.datos[cod].habitacion].text = this.totales_hab[this.datos[cod].habitacion][0];
				break;
				case Artefacto.TIPO_GAS:
					total_gas += temp;
					this.totales_hab[this.datos[cod].habitacion][1] += temp;
					_root["total_gas_" + this.datos[cod].habitacion].text = this.totales_hab[this.datos[cod].habitacion][1];
				break;
			}	//switch
		}	//for
		
		//actualizo campos de totales (son fijos en todas las habitaciones)
		_root.total_electrico.text = total_electrico;
		_root.total_gas.text       = total_gas;
		_root.total_residuos.text  = total_residuos;
		_root.total_co2.text 	   = temp2;
	
	}	//actualizarTotales
}	//Casa
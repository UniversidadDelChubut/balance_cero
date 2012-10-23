class Balance {
	public var total_co2_casa:Number;
	public var total_co2_escuela:Number;
	public var anios:Array;
	public var anios_sel:Number;
	public var especies:Array;
	public var totales_especies:Array;
	public function Balance(datos_balance:Object) {
		this.anios = datos_balance.anios;
		this.especies = datos_balance.especies;
		this.anios_sel = datos_balance.anios_default;
		this.total_co2_casa = 0;
		this.total_co2_escuela = 0;
		this.totales_especies = new Array();
		// (!)
		for (var i = 0; i<this.especies.length; i++) {
			this.totales_especies[i] = 0;
		}
		//marco el boton de "2 años" como activo
		_root.activate(_root["bot"+this.anios_sel+"anios"]);
		this.actualizarTotales();
	}
	//Balance()
	public function actualizarTotales() {
		this.enlazarEventos();
		this.total_co2_casa = _root.la_casa.total_co2;
		this.total_co2_escuela = _root.la_escuela.total_co2;
		for (var i = 0; i<this.totales_especies.length; i++) {
			this.totales_especies[i] = this.calcularCantidadEspecies(this.anios_sel, this.especies[i]);
			_root["resultado_especie"+i].text = this.totales_especies[i];
			_root["especie"+i].text = this.especies[i].nombre;
		}
		//interfaz
		_root.balance_total_co2_casa.text = this.total_co2_casa;
		_root.balance_total_co2_escuela.text = this.total_co2_escuela;
	}
	//actualizarTotales
	public function enlazarEventos() {
		for (var i = 0; i<this.anios.length; i++) {
			_root["bot"+this.anios[i]+"anios"].onRelease = function() {
				var an = new Number(this._name.substr(3, this._name.length-3-length("anios")));
				_root.balance_cero.anios_sel = an;
				_root.balance_cero.actualizarTotales();
				_root.activate(this);
			};
		}
		_root["bot"+this.anios[i]+"anios"].onRollOver = function() {
			this.gotoAndStop(2);
		};
		_root["bot"+this.anios[i]+"anios"].onRollOut = function() {
			// if the button is not active, go to the normal state (frame 1)
			if (!this.active) {
				this.gotoAndStop(1);
			}
		};
	}
	//enlazarEventos
	public function calcularCantidadEspecies(anios, especie) {
		var total_co2 = this.total_co2_casa+total_co2_escuela;
		return Math.ceil(total_co2/especie.getTotalCarbonoCapturado(anios));
	}
	//calcularCantidadEspecies
}
//Balance

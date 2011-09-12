class Artefacto {
	//esta, aunque no lo crean, es la forma de declarar CONSTANTES (si, constantes) en AS 2
	public static function get TIPO_ELEC():Number {return 1};
	public static function get TIPO_GAS():Number {return 2};
	public static function get TIPO_AUTO():Number {return 3};
	public static function get COEFICIENTE_ELEC():Number {return 0.0004};
	public static function get COEFICIENTE_GAS():Number {return 0.00195};
	
	
	//estas serian las propiedades de las instancias
	public var codigo:String;
	public var nombre:String;
	public var tipo:Number;
	public var es24Horas:Boolean;
	public var periodoHoras:Number;			// en cuanto se incrementa. Por defecto 1. Cafetera: 0.25 (15 min.)
	public var consumo:Number;				// consumo horario de gas o energia electrica (segun el tipo)
	public var habitacion:String;
	
	//estas propiedades serían las únicas seteables por el flash (desde la interfaz)
	public var cantidad:Number;
	public var horas:Number;

	public var calorias:Number;		// solo para calefactor
	public var watts:Number;		// solo para lamparas electricas
	public var consumos:Object		// solo para alguno de los 2 anteriores
	
	public function Artefacto(datos:Object) {
		this.codigo 		= datos.codigo;
		this.nombre 		= datos.nombre;
		this.tipo   		= datos.tipo;
		this.es24Horas	 	= false;
		this.periodoHoras	= 1;
		this.consumo		= datos.consumo;
		this.cantidad 		= 0;
		this.horas    		= 0;
		this.habitacion		= datos.habitacion;
		
		// solo para casos específicos
		this.calorias		= 0;
		this.watts			= 0;
		this.consumos		= new Object();

		
		if(datos.periodoHoras != undefined)	//ej. cafetera = 15 minutos = 0.25
			this.periodoHoras = datos.periodoHoras;
		
		if(datos.es24Horas == true) {
		  this.es24Horas = true;
			this.horas     = 24;		//de prepo
		}
		
		if(datos.consumos != undefined)
			this.consumos = datos.consumos;
	}
	
	public function getTipo():String {
		if(this.tipo == Artefacto.TIPO_ELEC)
		  return "Eléctrico";
		else
		  return "A gas";
	}
	
	public function getCoeficiente():Number {
		if(this.tipo == Artefacto.TIPO_ELEC)
			return Artefacto.COEFICIENTE_ELEC;
		else
			return Artefacto.COEFICIENTE_GAS;
	}
	
	public function incrementarCantidad():Void {
		this.cantidad++;
	}
	
	public function decrementarCantidad():Void {
		if(this.cantidad > 0)
		  this.cantidad--;
	}
	
	public function incrementarHoras():Boolean {
		if(this.es24Horas == true)
		  return false;

		if(this.horas < 24)
		  this.horas += this.periodoHoras;
		return true;
	}
	
	public function decrementarHoras():Boolean {
		if(this.es24Horas == true)
		  return false;
			
		if(this.horas > 0)
		  this.horas -= this.periodoHoras;
		
		return true;
	}
	
	public function getHorasMinutos():String {
		if(this.periodoHoras != 1)
		{
			var hm:String = Math.floor(this.horas).toString();
			var num = this.horas;
			num -= Math.floor(num);
			num *= 60;
		
			hm = hm.concat(":", num.toString());
			return hm;
		}
		else
			return this.horas.toString();
	}
	
	public function calcularConsumo():Number {
		if(this.calorias > 0)		// caso calefactor
		{
			this.consumo = this.consumos["C" + this.calorias];
			return Math.floor(this.consumo * this.horas * this.cantidad);
		}
		else if(this.watts > 0)		// caso lamparas
		{
			this.consumo = this.consumos["W" + this.watts];
			return Math.floor(this.consumo * this.horas * this.cantidad);
		}
		else
			return Math.floor(this.consumo * this.horas * this.cantidad);
	}
	
	public function calcularCO2():Number {
		return this.calcularConsumo() * this.getCoeficiente();
	}
	
	public function cambiarCalorias():Number {
		switch(this.calorias) {
			case 0:
				this.calorias = 3000;
			break;
			case 3000:
				this.calorias = 4000;
			break;
			case 4000:
				this.calorias = 5000;
			break;
			case 5000:
				this.calorias = 3000;
			break;
			default:
			trace("valor de calorias no valido");
		}
		return this.calorias;
	}
}

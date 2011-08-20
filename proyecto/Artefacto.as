class Artefacto {
	//esta, aunque no lo crean, es la forma de declarar CONSTANTES (si, constantes) en AS 2
	public static function get TIPO_ELEC():Number {return 1};
	public static function get TIPO_GAS():Number {return 2};
	public static function get COEFICIENTE_ELECTRICO():Number {return 0.0004};
	public static function get COEFICIENTE_GAS():Number {return 0.0015};
	
	//estas serian las propiedades de las instancias
	public var codigo:String;
	public var nombre:String;
	public var tipo:Number;
	public var es24Horas:Boolean;
	public var periodoHoras;			// en cuanto se incrementa. Por defecto 1. Cafetera: 0.25 (15 min.)
	
	//estas propiedades serían las únicas seteables por el flash (desde la interfaz)
	public var cantidad:Number;
	public var horas;
	
	public function Artefacto(datos:Object) {
		this.codigo 	= datos.codigo;
		this.nombre 	= datos.nombre;
		this.tipo   	= datos.tipo;
		this.cantidad = 0;
		this.horas    = 0;
			
		if(datos.es24Horas == undefined)
		  this.es24Horas = false;
		
		if(datos.periodoHoras == undefined)	//ej. cafetera = 15 minutos = 0.25
		  this.periodoHoras = 1;
		
		if(datos.es24Horas == true) {
		  this.es24Horas = true;
			this.horas     = 24;		//de prepo
		}
	}
	
	public function getTipo():String {
		if(this.tipo == Artefacto.TIPO_ELEC)
		  return "Eléctrico";
		else
		  return "A gas";
	}
	
	public function incrementarCantidad():Void {
		this.cantidad = this.cantidad + 1;
		eval("_root."+this.codigo+"_cantidad").text = this.cantidad;
		
	}
	
	public function decrementarCantidad():Void {
		if(this.cantidad > 0)
		  this.cantidad = this.cantidad - 1;
		
		eval("_root."+this.codigo+"_cantidad").text = this.cantidad;
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
}

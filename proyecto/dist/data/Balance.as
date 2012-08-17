class Balance {
	public var total_co2_casa:Object;
  public var total_co2_escuela:Object;
	public var anios:Array;
	public var especies:Object;
  
	public function Balance(artefactos:Object) {
    //this.anios = array(...);
    //this.especies = array(...);
    this.actualizarTotales();
	}
	//Balance()

	public function actualizarTotales() {
		this.total_co2_casa = _root.total_co2;
    this.total_co2_escuela = _root.total_co2_escuela;
    
		//TODO
		_root.total_electrico_escuela.text = total_electrico;
		_root.total_gas_escuela.text = total_gas;
		_root.total_co2_escuela.text = temp2;
	}
	//actualizarTotales
}
//Escuela

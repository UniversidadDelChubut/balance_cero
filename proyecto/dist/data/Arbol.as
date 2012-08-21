class Arbol {
  public var nombre:String;
  public var densidad:Number;
	public var volumenVeintenal:Number;
  
  public function Arbol(nombre:String, densidad:Number, vv: Number) {
    this.nombre             = nombre;
    this.densidad           = densidad;
    this.volumenVeintenal   = vv;
	}
  
	//Arbol()

	public function getTotalCarbonoCapturado(anios) {
    return this.getTotalCarbono(anios) * 3.66;
  }
  
  public function getTotalCarbono(anios) {
    return this.getPeso(anios)/ 2 * 1.5;
  }
  
  public function getPeso(anios) {
    return this.densidad * this.getVolumen(anios)
  }
  
  public function getVolumen(anios) {
    return this.volumenVeintenal * anios / 20;
  }

}
//Arbol

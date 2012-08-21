var datos_balance = {
	especies: new Array(
	  new Arbol('Eucalipto',    0.830, 1.000),
    new Arbol('Ponderosa',    0.400, 0.700),
    new Arbol('Acacia Visco', 1.015, 0.500),
    new Arbol('Aguaribay',    0.675, 0.800),
    new Arbol('Algarrobo',    0.730, 0.500),
    new Arbol('Fresno',       0.450, 0.400)
  ),
	
	anios: new Array(2, 5, 10, 20),
  
  anios_default: 5
};

var balance_cero = new Balance(datos_balance);
delete datos_balance;

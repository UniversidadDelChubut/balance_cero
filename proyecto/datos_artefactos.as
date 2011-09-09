var datos = {
	// cocina
	heladera_freezer: 	new Artefacto({codigo: 'heladera_freezer', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 60.87, es24Horas: true}),
	cafetera_electrica: new Artefacto({codigo: 'cafetera_electrica',	tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 263, periodoHoras: 0.25}),
	horno_microondas: 	new Artefacto({codigo: 'horno_microondas', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 234, periodoHoras: 0.25}),
	horno_gas: 			new Artefacto({codigo: 'horno_gas', 			tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 157}),
	hornalla_chica: 	new Artefacto({codigo: 'hornalla_chica', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 39}),
	hornalla_mediana: 	new Artefacto({codigo: 'hornalla_mediana', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 51}),
	hornalla_grande: 	new Artefacto({codigo: 'hornalla_grande', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 78}),
	calefon_mediano: 	new Artefacto({codigo: 'calefon_mediano', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 58.875}),
	batidora: 			new Artefacto({codigo: 'batidora', 				tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 37, periodoHoras: 0.25}),
	licuadora: 			new Artefacto({codigo: 'licuadora', 			tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 110, periodoHoras: 0.25}),
	procesadora: 		new Artefacto({codigo: 'procesadora', 			tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 146, periodoHoras: 0.25}),
	extractor_aire: 	new Artefacto({codigo: 'extractor_aire', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 9}),
	calefactor_cocina: 	new Artefacto({codigo: 'calefactor_cocina', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_cocina: 	new Artefacto({codigo: 'lampara_cocina', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 4}),
	
	// dorm1 (principal)
	calefactor_dorm1: 	new Artefacto({codigo: 'calefactor_dorm1', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'dorm1', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_dorm1:		new Artefacto({codigo: 'lampara_dorm1', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1',	 	consumo: 4}),
	
	// dorm2 (secundario)
	calefactor_dorm2: 	new Artefacto({codigo: 'calefactor_dorm2', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'dorm2', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_dorm2:		new Artefacto({codigo: 'lampara_dorm2', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm2',  	consumo: 4}),
	
	// living
	calefactor_living: 	new Artefacto({codigo: 'calefactor_living', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'living', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_living:		new Artefacto({codigo: 'lampara_living', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'living', 	consumo: 4}),
	
	// baño
	calefactor_banio: 	new Artefacto({codigo: 'calefactor_banio', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'banio', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_banio:		new Artefacto({codigo: 'lampara_banio', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'banio', 	consumo: 4}),
	
	// lavadero
	calefactor_lavadero:new Artefacto({codigo: 'calefactor_lavadero', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'lavadero', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_lavadero:	new Artefacto({codigo: 'lampara_lavadero', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 4}),
	
	// garage
	auto:				new Artefacto({codigo: 'auto',			 		tipo: Artefacto.TIPO_AUTO, habitacion: 'garage', 	consumo: 1}),
	calefactor_garage:	new Artefacto({codigo: 'calefactor_garage', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'garage', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_garage:		new Artefacto({codigo: 'lampara_garage', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'garage', 	consumo: 4})
	
	//lampara_cocina: 	new Artefacto({codigo: 'lampara_cocina', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', consumo: 0, consumos: {W5: 9, W6: 2, W8: 2, W9: 2, W11: 2, W12: 2, W14: 2, W15: 2, W18: 2, W23: 2, W24: 2}})
};

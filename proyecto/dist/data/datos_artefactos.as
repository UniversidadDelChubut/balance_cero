﻿var datos = {
	// cocina
	heladera_freezer: 		new Artefacto({codigo: 'heladera_freezer', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 60.87, es24Horas: true}),
	cafetera_electrica: 	new Artefacto({codigo: 'cafetera_electrica',	tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 263, periodoHoras: 0.25}),
	horno_microondas: 		new Artefacto({codigo: 'horno_microondas', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 234, periodoHoras: 0.25}),
	horno_gas: 				new Artefacto({codigo: 'horno_gas', 			tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 157}),
	hornalla_chica: 		new Artefacto({codigo: 'hornalla_chica', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 39}),
	hornalla_mediana: 		new Artefacto({codigo: 'hornalla_mediana', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 51}),
	hornalla_grande: 		new Artefacto({codigo: 'hornalla_grande', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 78}),
	calefon_mediano: 		new Artefacto({codigo: 'calefon_mediano', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 58.875}),
	batidora: 				new Artefacto({codigo: 'batidora', 				tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 37, periodoHoras: 0.25}),
	licuadora: 				new Artefacto({codigo: 'licuadora', 			tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 110, periodoHoras: 0.25}),
	procesadora: 			new Artefacto({codigo: 'procesadora', 			tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 146, periodoHoras: 0.25}),
	extractor_aire: 		new Artefacto({codigo: 'extractor_aire', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 9}),
	calefactor_cocina: 		new Artefacto({codigo: 'calefactor_cocina', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'cocina', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_cocina: 		new Artefacto({codigo: 'lampara_cocina', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', 	consumo: 4}),
	
	// dorm1 (principal)
	ventilador_dorm1:	new Artefacto({codigo: 'ventilador_dorm1', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1', consumo: 11}),
	aire_acondicionado: new Artefacto({codigo: 'aire_acondicionado', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1', consumo: 185}),
	minicomponente_dorm1: new Artefacto({codigo: 'minicomponente_dorm1', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1', consumo: 22}),
	televisor_dorm1: new Artefacto({codigo: 'televisor_dorm1', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1', consumo: 18}),
	caloventor: new Artefacto({codigo: 'caloventor', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1', consumo: 8}),
	radiador_electrico: new Artefacto({codigo: 'radiador_electrico', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1', consumo: 183}),
	calefactor_dorm1: 	new Artefacto({codigo: 'calefactor_dorm1', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'dorm1', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_dorm1:		new Artefacto({codigo: 'lampara_dorm1', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm1',	 	consumo: 4}),
	
	// dorm2 (secundario)
	ventilador_dorm2:	new Artefacto({codigo: 'ventilador_dorm2', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm2', consumo: 11}),
	minicomponente_dorm2: new Artefacto({codigo: 'minicomponente_dorm2', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm2', consumo: 22}),
	televisor_dorm2: new Artefacto({codigo: 'televisor_dorm2', tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm2', consumo: 18}),
	computadora: new Artefacto({codigo: 'computadora', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm2', 	consumo: 110}),
	calefactor_dorm2: 	new Artefacto({codigo: 'calefactor_dorm2', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'dorm2', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_dorm2:		new Artefacto({codigo: 'lampara_dorm2', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'dorm2',  	consumo: 4}),
	
	// living
	ventilador_living:	new Artefacto({codigo: 'ventilador_living', tipo: Artefacto.TIPO_ELEC, habitacion: 'living', consumo: 11}),
	aire_acondicionado_living: new Artefacto({codigo: 'aire_acondicionado_living', tipo: Artefacto.TIPO_ELEC, habitacion: 'living', consumo: 185}),
	minicomponente_living: new Artefacto({codigo: 'minicomponente_living', tipo: Artefacto.TIPO_ELEC, habitacion: 'living', consumo: 22}),
	consola_juegos: new Artefacto({codigo: 'consola_juegos', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'living', 	consumo: 110}),
	televisor_living: new Artefacto({codigo: 'televisor_living', tipo: Artefacto.TIPO_ELEC, habitacion: 'living', consumo: 18}),
	repro_dvd: new Artefacto({codigo: 'repro_dvd', tipo: Artefacto.TIPO_ELEC, habitacion: 'living', consumo: 18}),
	calefactor_living: 	new Artefacto({codigo: 'calefactor_living', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'living', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_living:		new Artefacto({codigo: 'lampara_living', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'living', 	consumo: 4}),
		
	// baño
	secador_pelo:		new Artefacto({codigo: 'secador_pelo',	tipo: Artefacto.TIPO_ELEC, habitacion: 'banio', consumo: 146, periodoHoras: 0.25}),
	plancha_pelo:		new Artefacto({codigo: 'plancha_pelo',	tipo: Artefacto.TIPO_ELEC, habitacion: 'banio', consumo: 146, periodoHoras: 0.25}),
	afeitadora:	new Artefacto({codigo: 'afeitadora', tipo: Artefacto.TIPO_ELEC, habitacion: 'banio', consumo: 5, periodoHoras: 0.25}),
	lampara_banio:		new Artefacto({codigo: 'lampara_banio',	tipo: Artefacto.TIPO_ELEC, habitacion: 'banio', 	consumo: 4}),
	calefactor_banio: 	new Artefacto({codigo: 'calefactor_banio', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'banio', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	
	// lavadero
	termotanque: new Artefacto({codigo: 'termotanque_gas', tipo: Artefacto.TIPO_GAS, habitacion: 'lavadero', 	consumo: 19.625, es24Horas: true}),
	lavarropas:	new Artefacto({codigo: 'lavarropas_automatico', tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 66}),
	secarropas:	new Artefacto({codigo: 'secarropas', tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero',	consumo: 70}),
	plancha:	new Artefacto({codigo: 'plancha', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 219}),
	maquina_coser:	new Artefacto({codigo: 'maquina_coser', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 37}),
	aspiradora:	new Artefacto({codigo: 'aspiradora', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 246}),
	lustradora:	new Artefacto({codigo: 'lustradora', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 246}),
	calefactor_lavadero:new Artefacto({codigo: 'calefactor_lavadero', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'lavadero', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_lavadero:	new Artefacto({codigo: 'lampara_lavadero', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'lavadero', 	consumo: 4}),
	
	// garage
	cortapasto:	new Artefacto({codigo: 'cortapasto', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'garage', 	consumo: 183}),
	bordeadora:			new Artefacto({codigo: 'bordeadora', 			tipo: Artefacto.TIPO_ELEC, habitacion: 'garage', 	consumo: 146}),
	tijera_podar:	new Artefacto({codigo: 'tijera_podar', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'garage', 	consumo: 128}),
	hidrolavadora:		new Artefacto({codigo: 'hidrolavadora', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'garage', 	consumo: 438}),
	auto:				new Artefacto({codigo: 'auto',			 		tipo: Artefacto.TIPO_AUTO, habitacion: 'garage', 	consumo: 1}),
	calefactor_garage:	new Artefacto({codigo: 'calefactor_garage', 	tipo: Artefacto.TIPO_GAS,  habitacion: 'garage', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_garage:		new Artefacto({codigo: 'lampara_garage', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'garage', 	consumo: 4})
	
	//lampara_cocina: 	new Artefacto({codigo: 'lampara_cocina', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'cocina', consumo: 0, consumos: {W5: 9, W6: 2, W8: 2, W9: 2, W11: 2, W12: 2, W14: 2, W15: 2, W18: 2, W23: 2, W24: 2}})
};
var la_casa = new Casa(datos);
delete datos;

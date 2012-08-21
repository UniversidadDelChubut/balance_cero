var datos = {
	// escuela
  computadora_escuela: new Artefacto({codigo: 'computadora_escuela', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 110}),
  impresora_escuela: new Artefacto({codigo: 'impresora_escuela', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 110}),
  proyector_escuela: new Artefacto({codigo: 'proyector_escuela', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 110}),
	fotocopiadora_escuela: new Artefacto({codigo: 'fotocopiadora_escuela', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 110}),
  reproductor_escuela: new Artefacto({codigo: 'reproductor_escuela', tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', consumo: 18}),
  minicomponente_escuela: new Artefacto({codigo: 'minicomponente_escuela', tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', consumo: 22}),
  fax_escuela: new Artefacto({codigo: 'fax_escuela', 	tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 110}),
  cafetera_escuela: 	new Artefacto({codigo: 'cafetera_escuela',	tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 263, periodoHoras: 0.25}),
  filmadora_escuela: new Artefacto({codigo: 'filmadora_escuela', tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', consumo: 18}),
  televisor_escuela: new Artefacto({codigo: 'televisor_escuela', tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', consumo: 18}),
  heladera_escuela: 		new Artefacto({codigo: 'heladera_escuela', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 60.87, es24Horas: true}),
  aspiradora_escuela:	new Artefacto({codigo: 'aspiradora_escuela', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela', 	consumo: 246}),
	calefactor_escuela: 	new Artefacto({codigo: 'calefactor_escuela', 		tipo: Artefacto.TIPO_GAS,  habitacion: 'escuela', 	consumo: 0, consumos: {C3000: 59, C4000: 78, C5000: 98}}),
	lampara_escuela:		new Artefacto({codigo: 'lampara_escuela', 		tipo: Artefacto.TIPO_ELEC, habitacion: 'escuela',  	consumo: 4})
};
var la_escuela = new Escuela(datos);
delete datos;

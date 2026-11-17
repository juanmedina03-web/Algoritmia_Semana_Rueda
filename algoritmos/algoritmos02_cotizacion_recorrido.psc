Algoritmo RuedaLibre_ReservaRecorrido
	Definir rutaElegida Como Cadena
	Definir tarifaIndividual Como Entero
	Definir cuposGrupo Como Entero
	Definir porcentajeReserva Como Real
	Definir costoBruto Como Entero
	Definir abonoInicial Como Entero
	Definir saldoRestante Como Entero
	porcentajeReserva <- 0.30
	Escribir '   RUEDA LIBRE - RESERVA DE RECORRIDOS    '
	Escribir '>> Ruta guiada a reservar:'
	Leer rutaElegida
	Escribir '>> Tarifa por ciclista ($):'
	Leer tarifaIndividual
	Escribir '>> Total de participantes:'
	Leer cuposGrupo
	costoBruto <- tarifaIndividual*cuposGrupo
	abonoInicial <- redon(costoBruto*porcentajeReserva)
	saldoRestante <- costoBruto-abonoInicial
	Escribir 'COMPROBANTE DE RESERVA: ', rutaElegida
	Escribir 'Grupo confirmado: ', cuposGrupo, ' ciclista(s)'
	Escribir 'Valor total del tour: $', costoBruto
	Escribir 'Anticipo requerido (30%): $', abonoInicial
	Escribir 'Saldo a pagar el dia del tour: $', saldoRestante
FinAlgoritmo

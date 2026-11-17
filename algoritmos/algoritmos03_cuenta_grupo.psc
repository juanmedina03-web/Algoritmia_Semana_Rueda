Algoritmo RuedaLibre_LiquidacionGrupal
	Definir flotaBicis Como Entero
	Definir tiempoUso Como Entero
	Definir tarifaTour Como Entero
	Definir integrantesGrupo Como Entero
	Definir tarifaHoraBici Como Entero
	Definir tasaMantenimiento Como Real
	Definir netoBicicletas Como Real
	Definir netoRecorrido Como Real
	Definir subtotalServicios Como Real
	Definir aporteFlota Como Real
	Definir totalCuenta Como Real
	Definir cuotaSinAjuste Como Real
	Definir cuotaAjustada Como Real
	Definir excedenteCambio Como Real
	tarifaHoraBici <- 10000
	tasaMantenimiento <- 0.10
	Escribir '   RUEDA LIBRE v0.1 - LIQUIDACION DE GRUPO    '
	Escribir '>> Cantidad de bicicletas urbanas a alquilar:'
	Leer flotaBicis
	Escribir '>> Horas de alquiler:'
	Leer tiempoUso
	Escribir '>> Valor del recorrido guiado por persona ($):'
	Leer tarifaTour
	Escribir '>> Numero de integrantes del grupo:'
	Leer integrantesGrupo
	netoBicicletas <- flotaBicis*tiempoUso*tarifaHoraBici
	netoRecorrido <- tarifaTour*integrantesGrupo
	subtotalServicios <- netoBicicletas+netoRecorrido
	aporteFlota <- subtotalServicios*tasaMantenimiento
	totalCuenta <- subtotalServicios+aporteFlota
	cuotaSinAjuste <- totalCuenta/integrantesGrupo
	cuotaAjustada <- trunc((cuotaSinAjuste+99)/100)*100
	excedenteCambio <- (cuotaAjustada*integrantesGrupo)-totalCuenta
	Escribir '            DETALLE DE FACTURACION            '
	Escribir '1. Alquiler flota (', flotaBicis, ' bicis x ', tiempoUso, 'h): $', netoBicicletas
	Escribir '2. Recorrido guiado (', integrantesGrupo, ' pers):   $', netoRecorrido
	Escribir 'Subtotal servicios:               $', subtotalServicios
	Escribir 'Aporte mantenimiento flota (10%): $', aporteFlota
	Escribir 'TOTAL A PAGAR GRUPO:              $', totalCuenta
	Escribir 'Cuota exacta por persona:         $', cuotaSinAjuste
	Escribir 'CUOTA POR PERSONA (Ajuste a 100): $', cuotaAjustada
	Escribir '(Ajuste total por redondeo: +$', excedenteCambio, ')'
FinAlgoritmo

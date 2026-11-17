Algoritmo RuedaLibre_CotizadorExpress
	Definir cliente Como Cadena
	Definir tiempoHoras Como Entero
	Definir tiempoMinutos Como Entero
	Definir tarifaBase Como Entero
	Definir montoFinal Como Entero
	tarifaBase <- 10000
	Escribir '   RUEDA LIBRE - TAQUILLA EXPRESS v0.1    '
	Escribir '>> Nombre del ciclista:'
	Leer cliente
	Escribir '>> Tiempo de uso (en horas):'
	Leer tiempoHoras
	tiempoMinutos <- tiempoHoras*60
	montoFinal <- tiempoHoras*tarifaBase
	Escribir 'Hola, ', cliente, ': tu alquiler de ', tiempoHoras, ' horas cuesta $', montoFinal
	Escribir '(Disfrutaras de ', tiempoMinutos, ' minutos de rodaje con casco y candado)'
FinAlgoritmo

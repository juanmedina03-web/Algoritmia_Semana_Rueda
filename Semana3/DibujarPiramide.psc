Algoritmo DibujarPiramide
	Definir altura, i, espacios, signos Como Entero
	
	Escribir "Digite de cuantos pisos quiere la piramide:"
	Leer altura
	
	Si altura <= 0 Entonces
		Escribir "Error: la altura debe ser mayor a 0"
	SiNo
		Para i <- 1 Hasta altura Hacer
			// Imprime los espacios de la izquierda
			Para espacios <- 1 Hasta altura - i Hacer
				Escribir Sin Saltar " "
			FinPara
			
			// Imprime los simbolos de cada piso
			Para signos <- 1 Hasta (2 * i) - 1 Hacer
				Escribir Sin Saltar "*"
			FinPara
			
			Escribir ""
		FinPara
	FinSi
FinAlgoritmo
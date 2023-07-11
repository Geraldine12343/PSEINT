Proceso mayorNumero
	Definir numeroIngresado Como Entero
	Definir numeroMayor Como Entero
	numeroMayor <-0
	
	// Esto van dentro de un bucle
	Leer numeroIngresado
	Si numeroIngresado>numeroMayor Entonces
		numeroMayor<-numeroIngresado
	FinSi
	
	Escribir "El mayor numero ingresado es: " numeroMayor
	
FinProceso
Algoritmo mayorYmenorNnumeros
	
	definir i , cadaNumeroingresado, cantidadNumerosIngresados, nummayor, nummenor Como Entero
	
	nummayor<-0
	nummenor<-0
	i<-1

	escribir "ingrese la cantidad de numeros"
	leer cantidadNumerosIngresados
	mientras i<=cantidadNumerosIngresados Hacer
		escribir "ingrese el numero: ",i,""
		leer cadaNumeroingresado
		si i=1 entonces 
			nummayor<- cadaNumeroingresado
			nummenor<- cadaNumeroingresado
			sino 
				si cadaNumeroingresado> nummayor Entonces
					nummayor<- cadaNumeroingresado
					
				FinSi
				si cadaNumeroingresado< nummenor Entonces
					nummenor<- cadaNumeroingresado
					
				FinSi
			FinSi
			i<-i+1
			escribir "el numero menor ingresado es: " ,nummenor
			escribir "el numero mayor ingresado es: " ,nummayor
	FinMientras
	FinAlgoritmo

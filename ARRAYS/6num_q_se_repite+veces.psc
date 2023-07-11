Algoritmo ejercicio6
	//Realice un algoritmo que lea N elementos y que imprima el número que se repite más veces dentro del arreglo.
	
	Dimension arreglo[100]   //cuando habla de N elementos puede ser la cantidad que yo quiera
	Dimension contador[100]
	numeroconmas_repeticiones <- 0
	numero_repetido <- 0
	
	Escribir "Ingrese la cantidad de elementos (N):"
	Leer N
	
	Para i <- 0 Hasta N-1 con paso 1 Hacer
		Escribir "Ingrese el elemento ", i, ":"
		Leer arreglo[i] // Leer el elemento ingresado por el usuario y asignarlo a la posición i del arreglo
	FinPara
	
	Para i <- 0 Hasta N-1 Hacer
		contador[i] <- 0 // Inicializar los contadores en 0
	FinPara
	
	Para i <- 0 Hasta N-1 Hacer
		Para j <- 0 Hasta N-1 con paso 1 Hacer
			Si arreglo[i] = arreglo[j] Entonces
				contador[i] <- contador[i] + 1 // Incrementar el contador para el elemento i si se encuentra una repetición //cuenta los numero_repetido			
			FinSi
		FinPara
		
		Si contador[i] > numeroconmas_repeticiones Entonces
			
			numeroconmas_repeticiones <- contador[i] // Actualizar el número máximo de repeticiones, es como calcular el mayor
			
			numeroconmas_repeticiones <- arreglo[i] // Actualizar el número repetido
			
			
		FinSi
		
	FinPara
	
	Escribir "El número que se repite más veces es: ", numero_repetido
FinAlgoritmo


	


	
	



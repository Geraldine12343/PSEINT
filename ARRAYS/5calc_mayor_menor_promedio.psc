Algoritmo ejercicio5
	//Realice un algoritmo que lea en un arreglo las marcas obtenidas por 10 corredores en una carrera e imprimir cuántos tienen una
	//marca mayor, cuántos tienen una marca menor que el promedio y el promedio.
	
	Dimension marcas[10]
		suma <- 0
	    promedio<-0
		contador_mayor <- 0
		contador_menor <- 0
		
		Para i <- 0 Hasta 9 Hacer
			Escribir "Ingrese la marca del corredor ", i, ":"
			Leer marcas[i] // Leer la marca ingresada por el usuario y asignarla a la posición i del arreglo
			
			suma <- suma + marcas[i] // Sumar las marcas para calcular el promedio
		FinPara
		
		promedio <- suma / 10 // Calcular el promedio
		
		Para i <- 0 Hasta 9 Hacer
			Si marcas[i] > promedio Entonces
				contador_mayor <- contador_mayor + 1 // Incrementar el contador de marcas mayores al promedio
			Sino 
				Si marcas[i] < promedio Entonces
				contador_menor <- contador_menor + 1 // Incrementar el contador de marcas menores al promedio
			FinSi
		FinSi
		
		FinPara
		
		Escribir "Cantidad de corredores con marca mayor al promedio: ", contador_mayor
		Escribir "Cantidad de corredores con marca menor al promedio: ", contador_menor
		Escribir "Promedio de marcas: ", promedio
FinAlgoritmo

	
	





		


	


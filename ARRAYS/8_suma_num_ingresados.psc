Algoritmo ejercicio8
	//Realizar un programa que permita almacenar n�meros reales en una matriz de orden 4�3, cuatro filas y tres columnas. Adem�s,
	//calcular e imprimir la suma de cada uno de los n�meros ingresados.
	Definir matriz Como Real
	Definir i, j Como Entero // i filas osea 4, j columnas osea 3
	Definir suma Como Real
	
	dimension matriz[4, 3] //definir matriz
	
	suma <- 0  //inicializar acumulador
	
	Para i <- 0 Hasta 4-1 con paso 1 Hacer //ingresar filas y columnas
		Para j <- 0 Hasta 3-1 Hacer
			Escribir "Ingrese el n�mero para la posici�n [", i, ",", j, "]: "
			Leer matriz[i, j] // siempre leer matriz luego de ingresar
			suma <- suma + matriz[i, j]
		FinPara
	FinPara
	
	Para i <- 0 Hasta 4-1 con paso 1 Hacer //recorrer filas y columnas 
		Para j <- 0 Hasta 3-1 Hacer
			Escribir "N�mero en la posici�n [", i, ",", j, "]: ", matriz[i, j]  //mostrar numeros ingresados en tales posiciones 
		FinPara
	FinPara
	
	Escribir "La suma de todos los n�meros ingresados es: ", suma //mostrar suma 
	
FinAlgoritmo

	




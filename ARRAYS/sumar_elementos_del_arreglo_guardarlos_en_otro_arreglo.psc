Algoritmo practicaextra_EJERCICIO_1
	//Realice un pseudoc�digo que permita sumar los elementos de dos arreglos y guarde el resultado en otro arreglo. Deber� imprimir
	//el arreglo resultante, el tama�o del arreglo ser� introducido por el usuario, se debe comprobar que el tama�o del arreglo sea v�lido,
	//es decir, no permitir valores negativos y que sea mayor que 2.
	
	
	Definir elementos Como Entero
	
	
	
	Definir i Como Entero
	Definir suma Como Entero
	
	Escribir "Ingrese el tama�o del arreglo (mayor que 2): "
	Leer elementos
	
	Mientras elementos<= 2 Hacer
		Escribir "Tama�o inv�lido. Ingrese el tama�o del arreglo (mayor que 2): "
		Leer elementos
	FinMientras
	
	Dimension arreglo1[elementos]
	Dimension arreglo2[elementos]
	Dimension resultado[elementos]
	
	Para i <- 0 Hasta elementos-1 Con Paso 1 Hacer
		Escribir "Ingrese el elemento ", i, " del arreglo 1: "
		Leer arreglo1[i]
	FinPara
	
	Para i <- 0 Hasta elementos-1 Con Paso 1 Hacer
		Escribir "Ingrese el elemento ", i, " del arreglo 2: "
		Leer arreglo2[i]
	FinPara
	
	Para i <- 0 Hasta elementos-1 Con Paso 1 Hacer
		resultado[i] <- arreglo1[i] + arreglo2[i]
	FinPara
	
	Escribir "El arreglo resultante es:"
	Para i <- 0 Hasta elementos-1 Con Paso 1 Hacer
		Escribir resultado[i]
	FinPara
	
FinAlgoritmo

	
	


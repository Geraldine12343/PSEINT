
	Algoritmo ejercicio3
		//Desarrollar un algoritmo que permita ingresar 5 datos numéricos en un arreglo y que luego los sume a todos y muestre el resultado
		//en pantalla.
		
		Dimension num[5]
		suma <- 0
		
		Para i <- 0 Hasta 4 con paso 1 Hacer
			Escribir "Ingrese el valor ", i, ":"
			
			Leer num[i] // Leer el valor ingresado por el usuario y asignarlo a la posición i del arreglo
			
			suma <- suma + num[i] // Sumar el valor al acumulador "suma"
			
		FinPara
		
		Escribir "La suma de los elementos del arreglo es: ", suma //mostrar
FinAlgoritmo



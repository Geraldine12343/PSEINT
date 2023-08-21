Algoritmo matriz7
definir tamaño como entero


	escribir "ingresa el tamaño del array, debe ser cuadrado"
	leer tamaño 
	dimension array[tamaño,tamaño]
	
	Para i<-0 Hasta tamaño-1 Con Paso 1 Hacer
		Para j<-0 Hasta tamaño-1 Con Paso 1 Hacer
			leer array[i,j]
			Si i==j Entonces
				escribir "el numero ", array[i,j] , " esta en la diagonal"
			Fin Si
		Fin Para
	Fin Para
	
FinAlgoritmo

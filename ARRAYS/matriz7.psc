Algoritmo matriz7
definir tama�o como entero


	escribir "ingresa el tama�o del array, debe ser cuadrado"
	leer tama�o 
	dimension array[tama�o,tama�o]
	
	Para i<-0 Hasta tama�o-1 Con Paso 1 Hacer
		Para j<-0 Hasta tama�o-1 Con Paso 1 Hacer
			leer array[i,j]
			Si i==j Entonces
				escribir "el numero ", array[i,j] , " esta en la diagonal"
			Fin Si
		Fin Para
	Fin Para
	
FinAlgoritmo

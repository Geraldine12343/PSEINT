Algoritmo promedioHijosFamilias
    Definir N, edad, suma, numFamilias como entero
    Definir promedio como real 
    suma <- 0
    numFamilias <- 0
	numFamilias <- numFamilias + 1
	
        Escribir "Ingrese el número de hijos de la familia "
        Leer N
        Para i <- 1 Hasta N Con Paso 1 Hacer
            Escribir "Ingrese la edad del hijo ", i
            Leer edad
            suma <- suma + edad
        FinPara
		promedio<- suma /N
		ESCRIBIR "EL promedio es :", promedio
		
		
FinAlgoritmo

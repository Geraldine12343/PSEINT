Algoritmo ejercicio4_practicaextra //ejercicio 12, ultimo 
	//Escriba un algoritmo donde se le pida al usuario que ingrese una lista de 30 alumnos y los resultados del parcial. Al finalizar la carga
	//	mostrar los alumnos que aprobaron y los que no aprobaron.
	definir cantalumnos como caracter
	definir notaparcial Como Real
	definir aprobados, noaprobados como entero

	
	dimension cantalumnos[5]
	Dimension resultadoparcial[5]
	
	
	Para i<-0 Hasta 5-1 Con Paso 1 Hacer
		escribir "ingrese el nombre del alumno: " , i
		leer cantalumnos[i]
		
		escribir "ingrese el resultado del parcial para el alumno: ",  cantalumnos[i]  //ingresar nombres y sus respectivas notas
		leer resultadoparcial[i]
		
	Fin Para
	
	
	
	Para i<-0 Hasta 5-1 Con Paso 1 Hacer  //mostrar quien aprobo y quien no 
	si notaparcial>=6 Entonces
		
		escribir "el alumno" ,i, "aprobo"
	sino 
		si notaparcial<6 Entonces
			escribir "el alumno" ,i, "no aprobo"
			
		FinSi
	FinSi
FinPara

		
	
	
	
	
FinAlgoritmo

Algoritmo calcularPromedioParcial
	
Definir cantidadAlumnos, i, nota, sumaNotas, promedio como real
	
		sumaNotas <- 0
		cantidadAlumnos <- 20
		
		Para i<-1 Hasta cantidadAlumnos Con Paso 1 Hacer
			Escribir "Ingrese la nota del alumno ", i,""
			Leer nota
			sumaNotas <- sumaNotas + nota
		FinPara
		promedio <- sumaNotas / 20
	
		Escribir "El promedio de notas del parcial es: ",promedio, ""
FinAlgoritmo


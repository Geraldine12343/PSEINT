
Proceso ejercicio3anexo3
	Definir nombreAlumno, nombreMayorPromedio como texto;
	Definir mayorPromedio, promedioAlumno, notaAlumno  Como Real
	Definir cantAlumnos, cantExamenes Como Entero
	cantAlumnos <- 30
	cantExamenes <-4
	
	
	Para i <- 1 Hasta cantAlumnos Con Paso 1 Hacer
		promedioAlumno <- 0
		Escribir "Ingrese nombre del alumno" i
		Leer nombreAlumno
		
		Para j<- 1 Hasta cantExamenes Con Paso 1 Hacer
			Escribir "Ingrese la nota:" j
			Leer notaAlumno
			promedioAlumno <- promedioAlumno + notaAlumno 
		Fin Para
		
		promedioAlumno <- promedioAlumno / cantExamenes
		
		
		Si mayorPromedio < promedioAlumno Entonces
			mayorPromedio <- promedioAlumno
			nombreMayorPromedio <- nombreAlumno
			
			
		Fin Si
		
		
	Fin Para
	
	Escribir "El alumno con mayor promedio es:" nombreMayorPromedio "y su promedio es:" mayorPromedio
	
	
	
	
	
FinProceso 
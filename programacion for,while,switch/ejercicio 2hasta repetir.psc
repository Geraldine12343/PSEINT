Proceso ejemplo
	Definir notaExamenAlumno, promedioExamenAlumno, mayorPromedioComision Como Real
	Definir nombreAlumno, nombreAlumnoMayorPromedio Como Caracter
	Definir cantidadAlumnos, cantidadExamenes Como Entero
	cantidadAlumnos <- 3 //30 alumnos
	cantidadExamenes <- 4 
	mayorPromedioComision <- 0  //Variable utilizada como un maximo la inicializo en 0.
	
	// Para iterar sobre mis alumnos de la comision
	Para i<-1 Hasta cantidadAlumnos Con Paso 1 Hacer
		promedioExamenAlumno <- 0 //Inicializo el acumulador en 0 PARA CADA alumno
		Escribir "Ingrese el nombre del alumno: " i
		Leer nombreAlumno
		
		//Para iterar sobre los parciales
		Para j<-1 Hasta cantidadExamenes Con Paso 1 Hacer
			Escribir "Ingrese la nota del examen" j " del alumno " nombreAlumno
			Leer notaExamenAlumno
			promedioExamenAlumno <- promedioExamenAlumno + notaExamenAlumno
		Fin Para
		
		promedioExamenAlumno <- promedioExamenAlumno / cantidadExamenes //Calculo el promedio
		Escribir "El promedio del alumno " nombreAlumno " es: " promedioExamenAlumno
		
		//Me fijo si el promedio de este alumno es el mayor promedio de la comision
		Si promedioExamenAlumno > mayorPromedioComision Entonces
			mayorPromedioComision <- promedioExamenAlumno
			nombreAlumnoMayorPromedio <- nombreAlumno
		Fin Si
		
	Fin Para
	
	Escribir "El alumno con el mayor promedio es " nombreAlumnoMayorPromedio " y su promedio es: " mayorPromedioComision
FinProceso


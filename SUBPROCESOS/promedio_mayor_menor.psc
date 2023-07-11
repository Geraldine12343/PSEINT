Algoritmo ejercicio5
	//Realizar un programa que le pida al usuario que ingrese una lista de 10 alumnos y los
	//resultados del examen final. Luego el programa llamará a una función que calcula el promedio
	//de notas, a otra función que calcula la mayor nota, y otra que calcula la menor nota. Luego el
	//sistema informará estos 3 valores al usuario.
	
	definir cantalumnos Como caracter
	definir notas_alumnos Como Real
	definir promedio Como Real
	definir mayornota Como Real
	definir menornota Como Real
	
	Dimension cantalumnos[10]
	dimension notas_alumnos[10]
	
	Para i<-0 Hasta 10-1 Con Paso 1 Hacer
	
			escribir "ingrese el nombre del alumno:", i
			leer cantalumnos[i]
			
			Repetir
				escribir "ingrese el resultado del alumno:",  cantalumnos[i]
				leer notas_alumnos[i]
				
				
				si notas_alumnos[i] >= 1 y notas_alumnos[i] <= 10  //los if son para los msj sin el if anda igual
					escribir "notavalida"
				sino 
					si notas_alumnos[i] < 1 o notas_alumnos[i] >  10
						escribir "nota no valida, ingrese la nota del alumno nuevamente"
					FinSi
				FinSi
		
			
			hasta Que notas_alumnos[i] >= 1 y notas_alumnos[i] <= 10
		
		Fin Para
		
		promedionotas<-calcularpromedio(promedio,notas_alumnos)
		notamayor<-calcularmayornota(mayornota,notas_alumnos)
		notamenor<-calcularmenornota(menornota,notas_alumnos)
	
FinAlgoritmo

Funcion promedionotas<-calcularpromedio(promedio,notas_alumnos)
	suma<-0
	promedio<-0
	
	Para i<-0 Hasta 10-1 Con Paso 1 Hacer
		suma<-suma+notas_alumnos[i]
	FinPara
	
	promedio<-suma/10
	
	escribir "el promedio de las notas es: " , promedio 
FinFuncion

Funcion notamayor<-calcularmayornota(mayornota,notas_alumnos)
	mayornota<-0
	
	Para i<-0 Hasta 10-1 Con Paso 1 Hacer
		
		si notas_alumnos[i] > mayornota Entonces 
			mayornota<-notas_alumnos[i]
			
		FinSi
		
	FinPara
	
	escribir "la mayor nota es: ", mayornota
	
FinFuncion

Funcion notamenor<-calcularmenornota(menornota,notas_alumnos)
	menornota<-10 //debe valer 10 porq si fuese 0 nada es menor a la nota 0 
	
	Para i<-0 Hasta 10-1 Con Paso 1 Hacer
		
		si notas_alumnos[i] < menornota Entonces 
			menornota<-notas_alumnos[i]
			
		FinSi
		
	FinPara
	
	escribir "la menor nota es: ", menornota
	
FinFuncion



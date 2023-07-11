Algoritmo busquedayordenamiento
	// Realizar un programa que permita al usuario de un hospital, buscar a un paciente por el
	//número de DNI e informar al usuario los datos de la persona.
	//Realizar una búsqueda secuencial
	//Los datos de los clientes son:
	//Posición Nombre Apellido DNI Teléfono Edad
	//0 Ana Martinez 17.123456 +541141200011 56
	//1 Camila Noe 25.789101 +543419485831 45
	//2 Bruno Noe 39.121314 +541145565789 26
	//3 Dardo Pistilli 21.151617 +541158637543 48
	//4 Ernestina Quesada 33.181920 +541161294758 35
	//5 Fausto Ramirez 15.212223 +543423444567 60
	//6 Jasmín Sosa 40.242526 +543402512345 25
	//7 Leonardo Tolosa 11.272829 +541151234567 70
	
	
	definir clientes Como Caracter
	definir nombre Como Caracter
	definir apellido Como Caracter
	definir opcionelegida Como Caracter
	
	dimension clientes[8,5]
	
	clientes[0, 0] <- "Ana"
	clientes[1, 0] <- "Camila"
	clientes[2, 0] <- "Bruno"
	clientes[3, 0] <- "Dardo"
	clientes[4, 0] <- "Ernestina"
	clientes[5, 0] <- "Fausto"
	clientes[6, 0] <- "Jasmin"
	clientes[7, 0] <- "Leonardo"
	
	clientes[0, 1] <- "Martinez"
	clientes[1, 1] <- "Noe"
	clientes[2, 1] <- "Noe"
	clientes[3, 1] <- "Pistili"
	clientes[4, 1] <- "Quesada"
	clientes[5, 1] <- "Ramirez"
	clientes[6, 1] <- "Sosa"
	clientes[7, 1] <- "Tolosa"
	
	clientes[0, 2] <- "17.123456"
	clientes[1, 2] <- "25.789101"
	clientes[2, 2] <- "39.121314"
	clientes[3, 2] <- "21.151617"
	clientes[4, 2] <- "33.181920"
	clientes[5, 2] <- "1"
	clientes[6, 2] <- "40.242526"
	clientes[7, 2] <- "11.272829"
	
	clientes[0, 3] <- "+541141200011"
	clientes[1, 3] <- "+543419485831"
	clientes[2, 3] <- "+541145565789"
	clientes[3, 3] <- "+541158637543"
	clientes[4, 3] <- "+541161294758"
	clientes[5, 3] <- "+543423444567"
	clientes[6, 3] <- "+543402512345"
	clientes[7, 3] <- "+541151234567"
	
	clientes[0, 4] <- "56"
	clientes[1, 4] <- "45"
	clientes[2, 4] <- "26"
	clientes[3, 4] <- "48"
	clientes[4, 4] <- "35"
	clientes[5, 4] <- "60"
	clientes[6, 4] <- "25"
	clientes[7, 4] <- "70"
	
	
	//funcion dni(clientes)
	//listadepersonas(clientes)
	//busquedanombreyapellido(clientes,nombre,apellido)
	leer opcionelegida
	ordenamiento(clientes, tipodeordenamiento,"por nombre")
	
FinAlgoritmo




funcion buscardni(clientes)
	definir dni Como Caracter
	
	escribir "ingrese el dni del cliente"
	leer dni
	
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		si clientes[i,2]==dni Entonces
			
			Para j<-0 Hasta 4 Con Paso 1 Hacer
				escribir clientes[i,j] 
				
			Fin Para
		FinSi
	Fin Para
FinFuncion


//Al programa del ejercicio anterior agregarle una nueva funcionalidad para que el usuario
//pueda pedir al sistema la lista de personas con sus datos ordenadas por apellido. (debe
//invocarse a un procedimiento que reciba un arreglo como parámetro ejemplo:
//ShowPatients(patients)

Funcion listadepersonas(clientes)  //ordenar solo por Apellido
	
	
	Para i<-0 Hasta 6 Con Paso 1 Hacer
		Para j<-i+1 Hasta 7 Con Paso 1 Hacer
			
			si clientes[i,1] >  clientes[j,1] // si se encuentra una cajita mas grande se intercambia y se hace lo del for k para q la menor vaya primero
				
				Para k<-0 Hasta 4 Con Paso 1 Hacer
					aux<-clientes[i,k]
					clientes[i,k]<-clientes[j,k]
					clientes[j,k]<-aux
					
				Fin Para
			FinSi
			
		Fin Para
	Fin Para
	
	Para i<-0 Hasta 7 Con Paso 1 Hacer //son 8 -1 filas porq empieza en 0 
		Para j<-0 Hasta 4 Con Paso 1 Hacer // porq hay 5-1 cajitas con datos porq empieza del 0 
			
			escribir clientes[i,j] 
			
		FinPara
		
	FinPara
	
FinFuncion

//Al programa del ejercicio anterior modificarle la funcionalidad que muestra la lista de personas
//ordenadas por apellido, además debe estar ordenado por apellido+nombre , se ordena solo con lo anterior



//Al programa del ejercicio anterior agregarle una nueva funcionalidad para que también pueda
//buscarse a una persona por apellido+nombre, realizar una búsqueda dicotómica.

funcion busquedanombreyapellido(clientes,nombre,apellido)
	escribir "ingrese nombre del cliente"
	leer nombre
	escribir "ingrese el apellido del cliente"
	leer apellido
	
	Para i<-0 Hasta 7 Con Paso 1 Hacer  // cantidad: 7 lineas
		si clientes[i,0]==nombre y clientes[i,1]==apellido Entonces  // si el nombre y el apellido ingresado equivalen a los que ya estan, los muestra
			
			
			Para j<-0 Hasta 4 Con Paso 1 Hacer //mostrar todos los datos , son 5 por eso del 0 al 4 
				escribir clientes[i,j] //  i equivale a la linea donde se encontro el nombre y apellido, j todos sus datos
				
			Fin Para
		FinSi
	Fin Para
	
	
FinFuncion


//Al programa del ejercicio anterior agregarle una nueva funcionalidad, para que el usuario
//pueda decidir si quiere ver la lista de todos los pacientes ordenada por edad o por
//apellido+nombre. Debe llamarse a un procedimiento que reciba un arreglo y un tipo de
//ordenamiento como parámetro, ejemplo ShowPatients(patients, order_type) y order_type
//puede contener tener los valores "by_name" o "by_age.


funcion ordenamiento(clientes, tipodeordenamiento,opcionelegida)
	

		Si tipodeordenamiento=="por nombre" Entonces  // ordenar por nombre 
			Para i<-0 Hasta 6 Con Paso 1 Hacer
				Para j<-i+1 Hasta 7 Con Paso 1 Hacer
					
					si clientes[i,0] >  clientes[j,0] // si se encuentra una cajita mas grande se intercambia y se hace lo del for k para q la menor vaya primero
						
						Para k<-0 Hasta 4 Con Paso 1 Hacer
							aux<-clientes[i,k]
							clientes[i,k]<-clientes[j,k]
							clientes[j,k]<-aux
							
						Fin Para
					FinSi
					
				Fin Para
			Fin Para
		
		
			
		SiNo // ordenar por edades 
			Si tipodeordenamiento == "por edad"Entonces
				Para i<-0 Hasta 6 Con Paso 1 Hacer
					Para j<-i+1 Hasta 7 Con Paso 1 Hacer
					
						
						si clientes[i,4] >  clientes[j,4] // si se encuentra una cajita mas grande se intercambia y se hace lo del for k para q la menor vaya primero
							
							Para k<-0 Hasta 4 Con Paso 1 Hacer
								aux<-clientes[i,k]
								clientes[i,k]<-clientes[j,k]
								clientes[j,k]<-aux
								
							Fin Para
						FinSi
					Fin Para
				FinSi
			Fin Para
		finsi
		
		
		Para i<-0 Hasta 7 Con Paso 1 Hacer //son 8 -1 filas porq empieza en 0 
			Para j<-0 Hasta 4 Con Paso 1 Hacer // porq hay 5-1 cajitas con datos porq empieza del 0 
				
				escribir clientes[i,j] 
				
			FinPara
			
		FinPara
	
FinFuncion









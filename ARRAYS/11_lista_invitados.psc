
	
	
	
	
	Algoritmo ejercicio3_practicaextra
		
		// Escriba un algoritmo donde se le pida al usuario que ingrese la cantidad de personas invitadas a un evento, luego pedir que ingrese
		//los nombres de la misma. Al finalizar la carga mostrar al usuario la lista de invitados.
		
		definir cantinvitados como entero
		definir nombres Como Caracter  //nombres de los invitados 
		
		escribir "ingrese la cantidad de invitados"  //el usuario decide la cant de invitados
		leer cantinvitados
		
		dimension nombres[cantinvitados]   //cant nombres en base a los invitados ingresados
		
		Para i<-0 Hasta cantinvitados-1 Con Paso 1 Hacer//siempre usar -1 en los para porq como empieza del 0 va a estar fuera de rango
			escribir "ingrese el nombre del invitado "  // ingresar cuales son los nombres de los invitados
			leer nombres[i]
			
		FinPara
		
		
		escribir "la lista de invitados es:"  // mostrar lista de invitados
		Para i <- 0 Hasta cantinvitados-1  con paso 1 Hacer  //siempre usar -1 en los para porq como empieza del 0 va a estar fuera de rango
			Escribir "  ", nombres[i]
		Fin Para
	

	
FinAlgoritmo

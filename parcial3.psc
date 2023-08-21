Algoritmo parcial3
	//escribir ingrese el valor de las horastrabajadas y leer 
	preciohora<-700
	dimension instituto[4,7] //4 profes, 7 dias 
	dimension sueldototalXprofe[4]
	
	//imgresar horas trabjadas por j dias, 2 for siempre
	// poner la plata en el otro array para comparar 
	
	//sueldo<<-horastrabajadas*preciohora
	escribir "ingresa horas trabj"
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 6 Con Paso 1 Hacer //asi se guarda la plata que gano por dia dirante los 7 dias
			
			Escribir " ingrese las horas trabajadas del dia ", j+1 " para el profe ", i+1
			leer ht 
			instituto[i,j]<-ht*preciohora  //PLATA QUE GANO ESE DIA 
			
		Fin Para
	Fin Para
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 6 Con Paso 1 Hacer
			sueldototalXprofe[i]<-sueldototalXprofe[i]+instituto[i,j] //ganancia total de cada profe por todos los dias
		Fin Para
	Fin Para
	
	Para i<-0 Hasta 3 Con Paso 1 Hacer
		Para j<-0 Hasta 6 Con Paso 1 Hacer
			
			Si sueldototalXprofe[i]>mayorsueldo Entonces
				mayorsueldo<-sueldototalXprofe[i]
				quientienemayorsueldo<-i
		
			Fin Si
		FinPara
		FinPara
	
	// donde dice instituto [i,j] se puede cambiar por esta variable,es lo mismo  sueldo<-horastrabajadas*preciohora
	
FinAlgoritmo

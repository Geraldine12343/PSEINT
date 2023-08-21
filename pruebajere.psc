Algoritmo pruebajere
	//escribir un programa que guarde la presion alta de 5 personas por tres dias (LUNES MIERCOLES Y VIERNES) y luego indique 
	// a) dia que se produjo la mayor presion alta y su valor
	// b) presion promedio de cada una de las 5 personas 
	
	//solicitar al usuario que cargue por pantalla la presion alta de cada persona para cada uno de los 3 dias 
	//y las guarde en un arreglo. los valores de presion alta no pueden ser negativos.
	
	//para obtener dia que se produjo la mayor presion alta armar la funcion presionamayor<-dia_mayor_presion()
	// y en el proceso principal mostrar los resultados 
	
	//para obtener la presion promedio de cada una de las 5 personas armar un subproceso que cargue un arreglo de dimension 5
	// donde se guarde en cada posicion la presion promedio de cada persona y mostrar dicho arreglo
	
	definir presionalta como real 
	definir guardar Como Real
	
	Dimension presionalta[5,3]
	dimension guardar[5]
	
	definir mayorpresionalta Como real
	definir promedio como real
	promedio<-0
	mayorpresionalta<-0
	suma<-0
	
	//sacar la mayor presion alta
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			
			Repetir
				Segun j Hacer
					0:
						Escribir "ingrese la presion de la persona" ,i+1 " para el dia lunes"
					1:
						Escribir "ingrese la presion de la persona" ,i+1 " para el dia miercoles"
					2:
						Escribir "ingrese la presion de la persona" ,i+1 " para el dia viernes"
				Fin Segun
				
				leer presionalta[i,j]
				
				Si presionalta[i,j]<0 Entonces
					escribir "ingrese nuevamente"
				Fin Si
			Mientras Que presionalta[i,j]<0
			
			suma<-suma+presionalta[i,j] // ESTO NO VA A MENOS QUE QUIERA MOSTRAR EL PROMEDIO TOTAL, ESO NO SE GUARDARIA EN UN ARREGLO, ES UNA VARIABLE
			
		Fin Para
	Fin Para
	
	promedio<-suma/15 // porque 5*3 del array es como resultado = 15 ESTO ES PROMEDIO TOTAL SOLO SE MOSTRARIA ESCRIBIR"PROMEDIO"
	//PERO NO VA, YA LO CALCULE ABAJO
	
	presionamayor<-dia_mayor_presion(presionalta,mayorpresionalta) //subproceso calcular el mayor
	guardarpromedio(guardar,promedio,presionalta) // subproceso guardar arreglo
	
	
FinAlgoritmo

	
	SubProceso presionamayor<-dia_mayor_presion(presionalta,mayorpresionalta Por Referencia)
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			
			Si mayorpresionalta<presionalta[i,j] Entonces
				mayorpresionalta<-presionalta[i,j]
			Fin Si
			
		Fin Para
	Fin Para
	escribir "la presion mas alta fue ", mayorpresionalta
FinSubProceso

subproceso guardarpromedio(guardar,promedio,presionalta)
Para i<-0 Hasta 4 Con Paso 1 Hacer
	Para j<-0 Hasta 2 Con Paso 1 Hacer
		
		guardar[i]<-guardar[i]+presionalta[i,j] // guardar en otro arreglo, ESTA ES LA SUMA DEL PROMEDIO, SE ACUMULA EN OTRO ARREGLO
		
		
	Fin Para
	guardar[i]<-guardar[i]/3 //porque es promedio es por cada una de las personas, no en total (ESTE ES EL PROMEDIO)
	//EN EL FOR SIGUE DENTRO DE LA I , POR ESO CUENTA PARA LAS 5 PERSONAS 
	Escribir "la presion promedio de la persona ",i+1, " es ", guardar[i]
Fin Para
FinSubProceso

	
	
	


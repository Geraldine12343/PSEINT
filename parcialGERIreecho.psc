Algoritmo parcialGERIreecho 
	//Escribir un programa que capture la producci�n de 3 plantas para los cinco d�as h�biles de la semana (lunes a viernes), e indique
	//(LISTO)
	
	//a) Qu� planta produjo m�s y cantidad de unidades producidas por esa planta (LISTO)
	
	//b) Qu� producci�n se obtuvo por d�a entre las 3 plantas (listo)
	
	//Solicitar al usuario que cargue por pantalla la producci�n en unidades para 
	//cada d�a de cada planta y las guarde en un arreglo. Las cantidades producidas no pueden ser negativas (LISTO)
	
	//Para obtener que planta produjo m�s armar la funci�n producci�n <- planta_mayor_produccion(?) 
	// y en el proceso principias mostrar los resultados
	
	//Para obtener la producci�n por d�a de las 3 plantas armar un subproceso que cargue un arreglo de dimensi�n 5, 
	// donde se guarde la producci�n de las 3 plantas por d�a
	
	definir produccion, produccionxdia, mayorproduccion,plantaconmasproduccion Como real
	mayorproduccion<-0
	dimension produccion[3,5]
	dimension produccionxdia[5] //5 porq son 5 dias

	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
		
			Repetir
			Escribir "ingrese la produccion de la plata", i+1 ,"para el dia" , j+1
			leer produccion[i,j]
			
			si produccion[i,j]<0 Entonces
				escribir "ingrese el valor nuevamente, no puede ser negativo"
			FinSi
		Mientras que produccion[i,j]<0
		
		FinPara
	Fin Para
	
	producci�nfuncion <- planta_mayor_produccion(mayorproduccion,plantaconmasproduccion,produccion,produccionxdia) 
	subprocesoproduccio(produccionxdia,produccion)
	
FinAlgoritmo

SubProceso subprocesoproduccio(produccionxdia Por Referencia,produccion)
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			
			produccionxdia[j]<-produccionxdia[j]+produccion[i,j]
		
		FinPara
	FinPara
	
	Para j<-0 Hasta 4 Con Paso 1 Hacer //for de los dias dividido las 3 plantas
		
		produccionxdia[j]<-produccionxdia[j]/3 //para dividir y mostrar se usa uno solo for, es dividido 3 porq son 3 plantas
		escribir "la produccion que se obtuvo por el dia " j+1, " entre las 3 plantas es " produccionxdia[j]
		//ese array guarda la produccion por dia entre las 3 plantas
		
	Fin Para
FinSubProceso


	funci�n producci�nfuncion <- planta_mayor_produccion(mayorproduccion por referencia,plantaconmasproduccion por referencia,produccion,produccionxdia) 
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			
			Si mayorproduccion<produccion[i,j] Entonces
				mayorproduccion<-produccion[i,j]
				plantaconmasproduccion<-i
				
	
			Fin Si
		FinPara
	FinPara
	escribir "la planta con mayor produccion es la planta ", plantaconmasproduccion+1, " con ", mayorproduccion ," unidades producidas "
Finfuncion

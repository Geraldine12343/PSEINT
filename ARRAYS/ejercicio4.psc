Algoritmo ejercicio4
	// Escribir un algoritmo que permita ingresar 10 valores numéricos en un arreglo y que como resultado devuelva el mayor de todos
	//los valores ingresados.
	
	definir nummayor Como Entero
	nummayor<-0
	
	
	dimension num[10]
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		escribir "ingresar 10 numeros"
		leer num[i]
		
		
	si num[i]>nummayor Entonces 
			nummayor<-num[i]
			
		FinSi
		
	Fin Para
	
	escribir "el mayor numero ingresado es: ", nummayor
	
FinAlgoritmo




		


	


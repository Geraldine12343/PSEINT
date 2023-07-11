Algoritmo ejercicio2
//Realizar un programa que le pida al usuario que ingrese dos números, luego llamar a una
//función que calcule la suma de ambos y la devuelva al programa principal. Desde el programa
	//principal mostrar el resultado de la suma
	
	definir suma Como entero
	definir num1,  num2 Como entero
	escribir "ingrese 2 numeros"
	leer num1
	leer num2
	escribir "", num1
	escribir "", num2
	
	suma<-calcularsuma(num1,num2)
	
	
FinAlgoritmo

funcion suma<-calcularsuma(num1,num2)
	suma<-0
	suma<-num1+num2
	escribir "la suma de los numeros es : ", suma 
	
FinFuncion

Algoritmo par_o_impar_tabla_multiplicar
	
	
	//Ingresar por pantalla un número e informar si es un número par o impar (usar el
	//operador módulo "%", por ejemplo, el resultado de 100%2 es el resto de la división
	//100/2
	
	definir numeroIngresado como entero
	definir resultado como entero
	definir tablanumero Como Entero
	
	escribir "ingrese un numero:"
	leer numeroIngresado
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		resultado<- numeroIngresado * i 
		Escribir numeroIngresado, " x ", i, " = ", resultado
	Fin Para
	
	Si numeroIngresado%2=0 Entonces
		escribir "el numero es par"
	SiNo
		si numeroIngresado%2=1 entonces
			escribir "el numero es impar"
			finsi
		Fin Si
	
FinAlgoritmo

algoritmo ejercicio4_validarDNI

//Realizar un programa que permita cargar los datos de un cliente, Nombre, apellido, DNI. La
//carga del DNI debe validarse a partir de una función llamada ValidarDNI, dicha función
//recibirá como parámetro de entrada el dni ingresado y devolverá una variable del tipo lógica
//Verdadero/Falso. Nota: El DNI debe estar formado por números y tener una longitud máxima
//de 8 caracteres y una longitud mínima de 6 caracteres


definir dni Como caracter
definir nombre,apellido Como caracter
definir dnivalido Como logico  //bandera logica

escribir "ingrese su nombre"
leer nombre

escribir "ingrese su apellido"
leer apellido

dnivalido=falso //bandera

dni<-ValidarDNI(dni) 

FinAlgoritmo

Funcion dni<-ValidarDNI(dni Por Referencia) 
	Definir longitudDNI como Entero  //definir la variable longitud
	longitudDNI <- Longitud(dni)   //guardamos la verdadera longitud del dni, dentro de una variable llamada longitudDni
	
	
	Repetir
		
		escribir "ingrese su dni"
		leer dni
		
		longitudDNI <- Longitud(dni) //actualizamos la long del dni ingresado para el repetir 
		
		Si longitudDNI >= 6 Y longitudDNI <= 8 Entonces
			dnivalido=Verdadero //bandera 
			escribir "Verdadero"
			
		SiNo
			si longitudDNI < 6 o longitudDNI > 8 Entonces
				escribir "falso, ingrese el dni nuevamente"
			FinSi
			
		FinSi
	hasta que longitudDNI >= 6 Y longitudDNI <= 8
	
FinFuncion

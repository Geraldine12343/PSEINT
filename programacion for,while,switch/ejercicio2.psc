Proceso ejercicio2

Definir usuario, contrase�a como cadena
Definir intentos como entero

intentos <- 1
Mientras (intentos <= 3) Hacer
	Escribir "Ingrese usuario: "
	Leer usuario
	Escribir "Ingrese contrase�a: "
	Leer contrase�a
	escribir "datos correctos"
Fin Mientras

Si (intentos > 3) Entonces
	Escribir "M�ximo de intentos alcanzado. No se puede ingresar al sistema de facturaci�n."
Fin Si
FinProceso


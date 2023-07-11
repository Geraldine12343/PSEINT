Proceso ejercicio2

Definir usuario, contraseña como cadena
Definir intentos como entero

intentos <- 1
Mientras (intentos <= 3) Hacer
	Escribir "Ingrese usuario: "
	Leer usuario
	Escribir "Ingrese contraseña: "
	Leer contraseña
	escribir "datos correctos"
Fin Mientras

Si (intentos > 3) Entonces
	Escribir "Máximo de intentos alcanzado. No se puede ingresar al sistema de facturación."
Fin Si
FinProceso


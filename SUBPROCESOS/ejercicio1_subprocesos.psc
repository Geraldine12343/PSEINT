Algoritmo ejercicio1_subprocesos
	//Realizar un programa que llame a un subproceso que pida al usuario ingresar el nombre, el
		//apellido y la edad de una persona, luego llamar a otro subproceso que muestre por pantalla
	//	los datos de la persona
	
	definir nombre, apellido Como Caracter
	definir edad Como Entero
	
	
		
	datos<-IngresarDatosPersona(nombre, apellido, edad)
	imprimirdatos<-MostrarDatosPerson(nombre, apellido, edad)
	
	
FinAlgoritmo

	SubProceso hola<-IngresarDatosPersona(nombre Por Referencia, apellido por referencia , edad por referencia )
		
		
		Escribir "Ingrese el nombre de la persona: "
		Leer nombre
		
		Escribir "Ingrese el apellido de la persona: "
		Leer apellido
		
		Escribir "Ingrese la edad de la persona: "
		Leer edad
		
FinSubProceso

SubProceso imprimirdatos<-MostrarDatosPerson(nombre, apellido, edad)
    Escribir "Datos de la persona:"
    Escribir "Nombre: ", nombre
    Escribir "Apellido: ", apellido
    Escribir "Edad: ", edad
FinSubProceso






	


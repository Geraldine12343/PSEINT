Algoritmo DESCUENTO_DOCENAS_EJERCICIO_8
	definir  cantidadProducto, unidadesObsequio, cantidadDocenas Como Entero
	definir  precioProducto, montoTotal, montoDescuento, montoPagar como Real
	
	precioProducto<-200
	unidadesObsequio <- 0
	
	Escribir"Ingrese la cantidad de docenas: "
	Leer cantidadProducto
	
	montoTotal<-cantidadProducto*precioProducto
	
	Si cantidadProducto > 3 Entonces
		// C�lculo del descuento del 15%
		montoDescuento <- montoTotal * 0.15
		
		// C�lculo del monto a pagar con descuento
		montoPagar <- montoTotal - montoDescuento
		
		
		
		
		
		
		// C�lculo de las unidades de obsequio , esta mal xd
		unidadesObsequio <- cantidadProducto - 3
		
		
	sino 
		// C�lculo del descuento del 10%
		montoDescuento <- montoTotal * 0.1
		
		// C�lculo del monto a pagar con descuento
		montoPagar <- montoTotal - montoDescuento
		
		
	Fin Si
	
	// mostrar resultados
	Escribir "El monto total de la compra sin descuentos es: ", montoTotal
	Escribir"El monto de descuento aplicado es: ", montoDescuento
	Escribir"El monto total a pagar es: ", montoPagar
	Escribir"Las unidades de obsequio son: ", unidadesObsequio
	
FinAlgoritmo




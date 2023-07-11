Algoritmo DESCUENTO_DOCENAS_EJERCICIO_8
	definir  cantidadProducto, unidadesObsequio, cantidadDocenas Como Entero
	definir  precioProducto, montoTotal, montoDescuento, montoPagar como Real
	
	precioProducto<-200
	unidadesObsequio <- 0
	
	Escribir"Ingrese la cantidad de docenas: "
	Leer cantidadProducto
	
	montoTotal<-cantidadProducto*precioProducto
	
	Si cantidadProducto > 3 Entonces
		// Cálculo del descuento del 15%
		montoDescuento <- montoTotal * 0.15
		
		// Cálculo del monto a pagar con descuento
		montoPagar <- montoTotal - montoDescuento
		
		
		
		
		
		
		// Cálculo de las unidades de obsequio , esta mal xd
		unidadesObsequio <- cantidadProducto - 3
		
		
	sino 
		// Cálculo del descuento del 10%
		montoDescuento <- montoTotal * 0.1
		
		// Cálculo del monto a pagar con descuento
		montoPagar <- montoTotal - montoDescuento
		
		
	Fin Si
	
	// mostrar resultados
	Escribir "El monto total de la compra sin descuentos es: ", montoTotal
	Escribir"El monto de descuento aplicado es: ", montoDescuento
	Escribir"El monto total a pagar es: ", montoPagar
	Escribir"Las unidades de obsequio son: ", unidadesObsequio
	
FinAlgoritmo




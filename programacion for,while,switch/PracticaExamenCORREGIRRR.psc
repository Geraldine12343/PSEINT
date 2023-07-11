Algoritmo PracticaExamen
	Definir ventasdelDia, datosVentas, dni, mediodePago Como Entero
	definir montodeVenta, montoFinal  como real
	definir  opcionmediodepago, listaTarjeta, clienteFrecuente , seleccionarPago como texto
	
	escribir "ingrese el dni del cliente"
	leer dni
	escribir "ingrese el monto de la venta"
	leer montodeVenta 
	
	
	
	escribir "ingrese el medio de pago" 
	leer opcionmediodepago
	segun opcionmediodepago hacer 
		1:
			escribir "efectivo"
		2:
			escribir "debito"
		3:
			escribir "credito"
			si mediodePago=1 Entonces
				escribir " las tarjetas que puede usar son visa y mastercard "
			FinSi
		FinSegun
	
	escribir "usted es cliente frecuente?"
si  clienteFrecuente= "si" entonces 
		escribir "mostrar tarjeta de la casa "
	FinSi
		
	
	
	
	
	
FinAlgoritmo

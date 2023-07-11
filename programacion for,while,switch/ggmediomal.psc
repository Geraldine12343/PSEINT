// Definir variables para contadores y totales
Algoritmo gg
	definir tarjetas_aceptadas como texto 

cantidad_ventas <-0
monto_total_ventas <-0

// Definir lista de tarjetas de crédito aceptadas por el comercio
tarjetas_aceptadas <- "Visa, Mastercard, American Express"

// Iniciar bucle para ingresar ventas

    // Solicitar información de la venta
    mostrar "Ingrese el DNI del cliente:"
    leer dni
    mientras longitud(dni) <= 7 hacer
        mostrar "El DNI ingresado es inválido. Ingrese el DNI del cliente nuevamente:"
        leer dni
    fin mientras
    
    mostrar "Ingrese el monto de la venta en pesos sin IVA:"
    leer monto
    
    mostrar "Ingrese el medio de pago:"
    mostrar "1 - Efectivo"
    mostrar "2 - Débito"
    mostrar "3 - Crédito (1 pago)"
    leer medio_pago
    mientras medio_pago <> 1 y medio_pago <> 2 y medio_pago <> 3 hacer
        mostrar "El medio de pago ingresado es inválido. Ingrese el medio de pago nuevamente:"
        mostrar "1 - Efectivo"
        mostrar "2 - Débito"
        mostrar "3 - Crédito (1 pago)"
        leer medio_pago
    fin mientras
    
    si medio_pago == 3 entonces
        // Si el medio de pago es crédito, solicitar la tarjeta utilizada
        mostrar "Ingrese la tarjeta utilizada:"
        para cada tarjeta en tarjetas_aceptadas hacer
            mostrar tarjeta
        fin para
        leer tarjeta
        mientras tarjeta <>tarjetas_aceptadas hacer
            mostrar "La tarjeta ingresada no es aceptada por el comercio. Ingrese la tarjeta nuevamente:"
            para cada tarjeta en tarjetas_aceptadas hacer
                mostrar tarjeta
            fin para
            leer tarjeta
			
        fin mientras
    fin si
    
    mostrar "Es cliente frecuente? SI/NO"
    leer es_cliente_frecuente
    
    // Calcular el monto final de la venta
    si medio_pago == 1 entonces
        // Si el medio de pago es efectivo, aplicar 15% de descuento
        monto_final <- monto * 0.85
    sino 
		si medio_pago == 2 entonces
			// Si el medio de pago es débito, aplicar 10% de descuento
			monto_final <- monto * 0.9
		sino
			// Si el medio de pago es crédito, no aplicar descuento
			si monto_final <- monto
		fin si
		
		// Agregar IVA al monto final
		monto_final <- monto_final * 0.21
		
		// Sumar al contador y al total de ventas
		cantidad_ventas + 1
		monto_total_ventas <- monto_final
		
		// Mostrar resumen de la venta
		mostrar "DNI: " + dni
		mostrar "Medio de pago: " + medio_pago
		si medio_pago == 3 entonces
			mostrar "Tarjeta utilizada: " + tarjeta
		fin si
		mostrar "Total: $" + monto_final
		
		// Preguntar si se desea ingresar otra venta
		mostrar "Desea ingresar otra venta"

FinAlgoritmo


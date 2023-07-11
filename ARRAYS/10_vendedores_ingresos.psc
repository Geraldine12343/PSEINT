Algoritmo ejercicio10_extra
	//Escriba un algoritmo que lea un arreglo de 2 x 5 indicando que una empresa tiene 2 vendedores cada uno de los cuales vende 5
		//productos. El arreglo almacena los ingresos obtenidos por cada vendedor en cada producto, imprimir el total de cada vendedor y
		//obtener los ingresos totales de la tienda.
	
	Definir ingresosTienda, ingresosVendedor1, ingresosVendedor2 Como Entero
		Dimension ingresos[2, 5]   // Arreglo para almacenar los ingresos
		
		// Leer los ingresos de cada vendedor
		Para vendedor <- 0 Hasta 2-1 Hacer
			Para producto <- 0 Hasta 5-1 Hacer
				Escribir "Ingrese los ingresos del vendedor ", vendedor, " para el producto ", producto, ": "
				Leer ingresos[vendedor, producto]
			Fin Para
		Fin Para
		
		// Calcular el total de ingresos de cada vendedor
		ingresosVendedor1 <- 0
		ingresosVendedor2 <- 0
		
		Para producto <- 0 Hasta 5-1 Hacer
			ingresosVendedor1 <- ingresosVendedor1 + ingresos[0, producto] //vendedor 1
			ingresosVendedor2 <- ingresosVendedor2 + ingresos[1, producto] //vendedor 2  porq son dos vendedores 
		Fin Para
		
		// Calcular los ingresos totales de la tienda
		ingresosTienda <- ingresosVendedor1 + ingresosVendedor2
		
		// Imprimir los resultados
		Escribir "Total ingresos del vendedor 1: ", ingresosVendedor1
		Escribir "Total ingresos del vendedor 2: ", ingresosVendedor2
		Escribir "Ingresos totales de la tienda: ", ingresosTienda
		
FinAlgoritmo

	
	
	
	
	


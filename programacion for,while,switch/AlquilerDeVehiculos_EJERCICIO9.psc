Algoritmo AlquilerDeVehiculos
	Definir kmRecorridos, montoTotal Como Real
	Escribir "Ingrese la cantidad de kilometros recorridos"
	Leer kmRecorridos
	
	Si kmRecorridos <= 150 Entonces
		montoTotal <- 300000
	Sino
		Si kmRecorridos > 150 y kmRecorridos <= 1000 Entonces
			montoTotal <- 300000 + (kmRecorridos - 150) * 15000
		Sino
			montoTotal <- 300000 + (1000 - 150) * 15000 + (kmRecorridos - 1000) * 10000
		Fin Si
	Fin Si
	
	Escribir "El monto total a pagar es: $", montoTotal
	
FinAlgoritmo


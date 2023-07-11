Algoritmo TRIANGULO
	definir ladoA, ladoB, ladoC Como real
	escribir "ingrese un lado del triangulo"
	Leer ladoA
	escribir "ingrese el segundo lado del triangulo"
	Leer ladoB
	escribir "ingrese el tercer lado del triangulo"
	Leer ladoC
	
	si ladoA= ladoB Y ladoA = ladoC Entonces
		Escribir "el triangulo es equilatero"
	SiNo
		si ladoA<> ladoB Y ladoA <> ladoC Entonces
			Escribir "el triangulo es isosceles"
		
		SiNo
			Escribir "el triangulo es escaleno"
		FinSi
	FinSi
FinAlgoritmo

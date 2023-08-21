Algoritmo parcial_2_geraldine
	definir productoA, productoB, importe, preciototal, descuento,montoapagar,cantidadclientes Como Entero// COMO REAL 
	//SACAR PRODUCTO A Y B 
	definir opcionelegida como caracter
	definir deseacontinuar Como Caracter
	
	//hice los calculos con el importe, lo meti dentro del switch lo de ingresar importe, no con producto a y b 
	//mensaje que le indica q producto elige al ingresar las opciones a y b en el swtich
	//SAQUE EL PARA porque ingresa trajes, no hay clientes
	
	
	// agregue Repetir
	Repetir // EL PROGRAMA DEBE TERMINAR CUANDO EL USUARIO desea continuar o no 
		

		escribir "ingrese el tipo de traje A-smoking B-ambo"
		leer opcionelegida
		escribir "ingrese el importe del producto elegido"
		leer importe


Segun opcionelegida Hacer
	
	a: escribir "a elegido la opcion smoking"
		escribir "ingrese el importe del producto elegido"
		leer importe
		Si importe<=25000 Entonces
			escribir "opcion invalida, solo pueden valer + de 25000" //opcion invalida
		SiNo
			si importe>=25000 Entonces // en validaciones decia producto a , era importe 
				montodecuento<-importe*0.15
				montoapagar<-importe-montodescuento
			FinSi
		Fin Si
	b: escribir "a elegido la opcion ambo"
		escribir "ingrese el importe del producto elegido"
		leer importe
		si importe > 0 y importe < 25000
			montodescuento<-importe*0.8
			montoapagar<-importe-montodecuento
			
		FinSi
		
	De Otro Modo:
		escribir "opcion invalida, ingrese A-B"
Fin Segun

Escribir "deseacontinuar? elija S-s-N-n" //en la prueba no andaba nose porque asique lo habia sacado
leer deseacontinuar
Mientras Que deseacontinuar = "s" o deseacontinuar = "S"

FinAlgoritmo
Algoritmo parcial_nico
//Una empresa posee 5 cobradores, cada uno de ellos está encargado de recolectar la cobranza de la empresa y rendir la misma al finalizar el día. La cobranza se realiza de Martes a Viernes.
//La empresa quiere saber:
//a) el cobrador con la mayor rendición de la semana y el total rendido en la semana
//b)el importe total cobrado por cada día de la semana
//Solicitar al usuario que cargue por pantalla la rendición de cada cobrador para cada día. La rendición no puede ser negativa.
//Para obtener el cobrador con la mayor rendición de la semana armar una función cobradorendicion <- cobrador_rendicion(?) y en el proceso principal mostrar los resultados
//Para mostrar el importe total cobrado por cada día de la semana armar un subproceso que cargue un arreglo de dimensión 4 donde se guarde el total de rendido para cada día de cobranza
	
	definir totalrendidosemana,mayorrendicion,vendedorquemasvendio Como Entero
	definir cobradores Como Entero
	dimension cobradores[5,4]	// i cobradores, j cuanto vendieron
	mayorrendicion<-0
	
		
	Para i<- 0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Repetir
			escribir " ingrese la rendicion del cobrador: " , i+1 , " por dia " , j+1 // ingresar rendision por dia del cobrador
			leer cobradores[i,j]
			
		Mientras Que cobradores[i,j]<0 //no ingresar datos negativos
		Fin Para
	Fin Para
	
	cobradorendicion <- cobrador_rendicion(mayorrendicion,cobradorendicion,vendedorquemasvendio,cobradores)
	mostrartotalvendedoresycuantovendieron<-mostrartotal(vendedorquemasvendio,cobradores,vendedorquemasvendio)
FinAlgoritmo

	
	funcion cobradorendicion <- cobrador_rendicion(mayorrendicion,cobradorendicion,vendedorquemasvendio,cobradores)
	Para i<- 0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			
			Si cobradores[i,j]>mayorrendicion Entonces // mayor rendicion de la semana en total
				mayorrendicion<-cobradores[i,j]
				vendedorquemasvendio<-i // guardar vendedor que mas vendio en la semana 
			Fin Si
		FinPara
	FinPara
FinFuncion

SubProceso mostrartotalvendedoresycuantovendieron<-mostrartotal(vendedorquemasvendio,cobradores,vendedorquemasvendio)
	
	Escribir "vendedor que mas vendio es el vendedor: ", vendedorquemasvendio
	Para j<-0 Hasta 3 Con Paso 1 Hacer // solo mostrar vendedor que mas vendio y cuanto
			Escribir "ventas en el dia " ,j+1, ": $" cobradores[vendedorquemasvendio,j]
		FinPara
	
FinSubProceso




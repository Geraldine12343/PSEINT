Algoritmo parcialnicorehecho
	//Una empresa posee 5 cobradores, cada uno de ellos está encargado de recolectar la cobranza de la empresa y rendir la misma al finalizar el día. La cobranza se realiza de Martes a Viernes.
	//La empresa quiere saber:
	//a) el cobrador con la mayor rendición de la semana y el total rendido en la semana
	//b)el importe total cobrado por cada día de la semana
	//Solicitar al usuario que cargue por pantalla la rendición de cada cobrador para cada día. La rendición no puede ser negativa.
	//Para obtener el cobrador con la mayor rendición de la semana armar una función cobradorendicion <- cobrador_rendicion(?) y en el proceso principal mostrar los resultados
	//Para mostrar el importe total cobrado por cada día de la semana armar un subproceso que cargue un arreglo de dimensión 4 donde se guarde el total de rendido para cada día de cobranza
	
	
	definir cobranza, mayorrendicion , totalrendicionsemana , importetotal Como real
	
	dimension cobranza[5,4]
	dimension importetotal[4]
	mayorrendicion<-0
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			
			Repetir
			
		escribir "ingrese la rendicion del cobrador" , i+1, "para el dia ", j+1
		leer cobranza[i,j]
		
	mientras que  cobranza[i,j]<0
	
	Fin Para
FinPara

cobradormayorrendicionsemana(mayorrendicion,totalrendicionsemana,cobranza)
total(importetotal,cobranza)

FinAlgoritmo

Funcion cobradormayorrendicionsemana(mayorrendicion,totalrendicionsemana,cobranza)
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Si mayorrendicion<cobranza[i,j] Entonces
				mayorrendicion<-cobranza[i,j] //cobrador con mayor rendicion
				cobradormayor<-i //ìndice 
			FinSi
	
FinPara
FinPara

Para j<-0 Hasta 3 Con Paso 1 Hacer
	totalrendicionsemana<-totalrendicionsemana+cobranza[cobradormayor,j] 
	//recorre los dias y se acumula en esa variable nueva, recorre los dias del mayorcobrador, no de los otros
Fin Para

//mostrar mensaje vendedor q mas vendio y cuanto en total 
	escribir "el cobrador con mayor rendicion de la semana es ", cobradormayor+1, "con un total de ", totalrendicionsemana "ventas en la semana" 
	

FinFuncion


SubProceso total(importetotal,cobranza)
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			
			importetotal[j]<-importetotal[j]+cobranza[i,j] //importe total para cada dia de la semana  
		
		FinPara
	Fin Para
	
//mostrar el importe total, para que no se repita mal hacer otro for aparte para mostrarlo
	Para j<-0 Hasta 3 Con Paso 1 Hacer
		escribir "el dia", j +1 , " se cobro en total ", importetotal[j] "$"
	Fin Para
	
FinSubProceso
	
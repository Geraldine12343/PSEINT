Algoritmo ejercicio6
	
	Dimension corredores[10, 2]
	Definir opcion Como Entero
	
	corredores[0,0] ="Pedro Gomez"
	corredores[0,1] ="7"   
	corredores[1,0] ="Martín Ceres"
	corredores[1,1] ="6"
	corredores[2,0] ="Ernestina Diaz"
	corredores[2,1] ="1"
	corredores[3,0] ="Gastón Bautista"
	corredores[3,1] ="2"
	corredores[4,0] ="Dalma Alvarez"
	corredores[4,1] ="8"
	corredores[5,0] ="Patricio Fernandez"
	corredores[5,1] ="3"
	corredores[6,0] ="Faustina Martinez"
	corredores[6,1] ="10"
	corredores[7,0] ="Andrea Perez"
	corredores[7,1] ="9"
	corredores[8,0] ="Hilda Lopez"
	corredores[8,1] ="4"
	corredores[9,0] ="León García"
	corredores[9,1] ="5"
	
	Repetir
		Escribir "1- Mostrar lista de corredores"
		Escribir "2- Mostrar los tres mejores"
		Escribir "3- Mostrar lista completa de resultados"
		Escribir "4- Salir"
		Escribir "Ingrese una opción:"
		Leer opcion
		
		Segun opcion Hacer
			Caso 1:
				lista<-ListaCorredores(corredores)
			Caso 2:
				mejores<-MejoresCorredores(corredores)
			Caso 3:
				posciciones<-ListaPosiciones(corredores)
			Caso 4:
				Escribir "Salir del programa"
			De Otro Modo:
				Escribir "Opción inválida. Intente nuevamente."
		FinSegun
	Hasta Que opcion = 4
FinAlgoritmo


Subproceso lista<-ListaCorredores(corredores)
    Escribir "Lista de corredores:"
    Para i = 0 Hasta 10-1 Hacer
        Escribir Sin Saltar corredores[i,0]  //todos los i, 0 son los nombres
    FinPara
	Escribir ""
	
FinSubproceso


	
SubProceso mejores<-MejoresCorredores(corredores)
	definir aux Como Caracter
	Escribir "Los tres mejores corredores:";
	
	//ordenar
	Para i<-0 Hasta 9-1 con paso 1 Hacer  // I representa la cajita que sera comparada con todas las demas
		Para j<-i+1 Hasta 9 con paso 1 Hacer // J vale "I + 1" para que no puedan valer lo mismo, y no se compare una cajita consigo misma
			
			
			Si  ConvertirANumero(corredores[i,1]) > ConvertirANumero(corredores[j,1]) Entonces //si la caja del puntaje comparada es menor, entra al for k 
			
			Para k<-0 Hasta 2-1 con paso 1 Hacer //intercambiar lugares hasta 2-1 porq los nombres y puntajes son 0 y 1
				
				aux<-corredores[i,k] //el valor de i se guarda en auxiliar, porq sino el valor de i se pierde
				
				corredores[i,k] <- corredores[j,k]  // se cambia j al lugar de i , entonces valen lo mismo j e i 
			
				corredores[j,k] <- aux // la i que esta en auxiliar se cambia al lugar de j , entonces estan ordenados
				
				// como tengo 0 y 1 pongo una k q representa cambiar el lugar de los dos 
				//la explicacion esta con j e i al revez xd
			FinPara
		FinSi
			FinPara
		FinPara
		
		//mostrar ordenamiento
	Para i<-0 Hasta 3-1 con paso 1 Hacer //mostrar 3 mejores puntajes, esto es i 
		Para j<-0 Hasta 2-1 con paso 1 Hacer   // mostrar nombres y puntajes q son 0 y 1 , esto es j 
			Escribir Sin Saltar corredores[i,j] " "; 
		Fin Para
		Escribir "";
	Fin Para
FinSubProceso
	


Subproceso posciciones<-ListaPosiciones(corredores)
    Escribir "Lista completa de resultados:"
    Para i = 0 Hasta 10-1 Hacer
        Escribir Sin Saltar "  corredor: ",   corredores[i,0], " - Posición:", corredores[i,1]  //mostrar i,1 corredores , mostrar i,2 posicion del corredor
		Escribir ""
	FinPara
FinSubproceso



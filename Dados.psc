Proceso Dados
	Definir dado, registro, a, b Como Entero;
	Definir lanzar Como Logico;		//Define variables.
	Dimension registro(1000);			//Crea el registro.
	lanzar<-Verdadero; a<-0;
	Mientras lanzar=Verdadero Hacer
		Escribir "¿Desea lanzar el dado? (VERDADERO O FALSO)";
		Leer lanzar;					//Pregunta si quiere lanzar el dado.
		Si lanzar=Verdadero Entonces
			dado<-azar(6)+1;				//Número aleatorio de 1 a 6.
			Escribir "El dado marcó ", dado;
			registro(a)<-dado; a<-a+1;	//Registra el resultado del dado.
		FinSi
	FinMientras
	si a<>0 Entonces
		Escribir "Los dados dieron estos valores en este orden:";
		para b<-0 hasta a-1 Con Paso 1 Hacer
			Escribir registro(b);		//Muestra el registro mediante un bucle.
		FinPara
	FinSi
FinProceso
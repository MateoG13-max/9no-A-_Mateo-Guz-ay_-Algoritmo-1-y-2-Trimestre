Proceso Rompecabezas_letras
	Definir letras, ingresado, almacen Como Caracter; //Define las variables de caracteres
	Definir a, b  Como Entero;			//Define las variables auxiliares (para los bucles)
	Dimension letras(12);					//Letras es para la palabra, ingresado es la palabra ingresada.
	letras(0)<-"O"; 	letras(1)<-"r"; 	letras(2)<-"n"; 	letras(3)<-"i";
	letras(4)<-"t"; 	letras(5)<-"o"; 	letras(6)<-"r"; 	letras(7)<-"r";
	letras(8)<-"i"; 	letras(9)<-"n"; letras(10)<-"c"; letras(11)<-"o";
	Para b<-0 hasta 3 Hacer
		Para a<-0 hasta 10 Hacer
			Si letras(a)>letras(a+1) Entonces
				almacen<-letras(a+1);
				letras(a+1)<-letras(a);				//Se usa el bucle y "almacen" para cambiar el orden de las letras.
				letras(a)<-almacen;
			FinSi
		FinPara
	FinPara
	Para a<-11 hasta 1 Con Paso -1 Hacer
		Escribir letras(a), " " Sin Saltar;		//Escribe las letras.
	FinPara										//Si pongo todas las letras "Sin saltar" se unirá con el mensaje que pide
	Escribir letras(0);							//que ingrese la palabra, por eso aquí se ingresa la última letra.
	Escribir "Ingrese una palabra a partir de las letras mezcladas.";
	Leer ingresado;									//Pide que ingrese la palabra y la lee.
	Si ingresado="ornitorrinco" o ingresado="Ornitorrinco" Entonces
		Escribir "La palabra es correcta: la solución es Ornitorrinco";
	SiNo											//Verifica que la palabra sea correcta y le informa al usuario si lo es o no.
		Escribir "Esa no es la solución, esa palabra es incorrecta";
	FinSi
FinProceso
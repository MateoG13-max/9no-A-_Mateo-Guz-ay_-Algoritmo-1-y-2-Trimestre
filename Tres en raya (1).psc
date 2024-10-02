Algoritmo Tres_en_raya
	Definir Tab1, Objetivo, aux_i, aux_j, aux_d1, aux_d2 Como Entero;	Definir Tab2, Ficha Como Caracter;
	Definir i, j, CantTurnos, Valor, Pos Como Entero; Definir Terminado, HayGanador Como Logico;
	Dimension Tab1[3,3]; Dimension Tab2[3,3];					//Crea variables y el vector 3x3 para el juego.
	Para i <- 0 Hasta 2 Hacer									//aux_d1 y aux_d2 verifican las diagonales.
		Para j <- 0 Hasta 2 Hacer								//aux_i y aux_j verifican las filas y columnas.
			Tab1[i,j] <- 0;										//Tab1-> 0=vacio   1=ficha X   2=ficha O
			Tab2[i,j] <- " ";									//Tab2-> Representacion visual de las fichas.
		FinPara												//Objetivo es el valor que se tiene que alcanzar
	FinPara													//para ganar (1 para X y 8 para O)
	Terminado <- Falso;	HayGanador <- Falso; CantTurnos <- 0;
	Mientras ~ Terminado hacer
		Borrar Pantalla;
		Escribir " ";
		Escribir "      ||     ||     ";
		Escribir "   ",Tab2[0,0],"  ||  ",Tab2[0,1],"  ||  ",Tab2[0,2];
		Escribir "     1||    2||    3";
		Escribir " =====++=====++======";
		Escribir "      ||     ||     ";
		Escribir "   ",Tab2[1,0],"  ||  ",Tab2[1,1],"  ||  ",Tab2[1,2];
		Escribir "     4||    5||    6";
		Escribir " =====++=====++======";
		Escribir "      ||     ||     ";
		Escribir "   ",Tab2[2,0],"  ||  ",Tab2[2,1],"  ||  ",Tab2[2,2];
		Escribir "     7||    8||    9";
		Escribir " ";											//Muestra la tabla del 3 en raya.
		Si ~ HayGanador y CantTurnos<9 Entonces
			CantTurnos <- CantTurnos+1;
			Si CantTurnos%2=1 Entonces
				Ficha <- 'X'; Valor <-  1; Objetivo <- 1;	Escribir "Turno del jugador 1 (X)";
			SiNo
				Ficha <- 'O'; Valor <-  2; Objetivo <- 8;	Escribir "Turno del jugador 2 (O)";
			FinSi												//Verifica a quién le toca.
			Escribir "Ingrese la Posición (1-9):";
			Repetir
				Leer Pos;										//Pregunta la posición (1-9).
				Si Pos<1 o Pos>9 Entonces
					Escribir "Posición incorrecta, ingrese nuevamente: ";	Pos <- 99;
				SiNo											//Verifica si la posición va de 1 a 9.
					i <- trunc((Pos-1)/3);	j <- ((Pos-1) MOD 3);
					Si Tab1[i,j]<>0 Entonces
						pos <- 99; Escribir "Posición incorrecta, ingrese nuevamente: ";
					FinSi										//Verifica si la posición no está ocupada.
				FinSi
			Hasta Que Pos<>99
			Tab1[i,j] <- Valor; Tab2[i,j] <- Ficha; aux_d1 <- 1; aux_d2 <- 1;
			Para i <- 0 hasta 2 hacer							//^ Actualiza los datos y posiciones.
				aux_i <- 1; aux_j <- 1; aux_d1 <- aux_d1*Tab1[i,i]; aux_d2 <- aux_d2*Tab1[i,2-i];
				Para j <- 0 hasta 2 hacer							//Verifica las diagonales,filas y columnas
				 aux_i <- aux_i*Tab1[i,j]; aux_j <- aux_j*Tab1[j,i];	//multiplicando los valores de Tab1 (0,1 o 2)
				FinPara										//AL MULTIPLICAR:
				Si aux_i=Objetivo o aux_j=Objetivo Entonces	//Si una fila o columna da 1=(1*1*1) gana X
					HayGanador <- Verdadero;					//Si una fila o columna da 8=(2*2*2) gana O
				FinSi
			FinPara
			Si aux_d1=Objetivo o aux_d2=Objetivo Entonces		//Si una diagonal da 1=(1*1*1) gana X
				HayGanador <- Verdadero;						//Si una diagonal da 8=(2*2*2) gana O
			FinSi
		SiNo
			Si HayGanador Entonces
				Escribir "Hay ganador: " sin saltar;
				Si CantTurnos%2=1 Entonces
					Escribir "El ganador es el jugador 1";
				SiNo
					Escribir "El ganador es el jugador 2";
				FinSi
			SiNo
				Escribir "¡Es un empate!";						//Verifica quién ganó o si es un empate
			FinSi												//dependiendo de las variables "CantTurnos"
			Terminado <- Verdadero;								//y "HayGanador".
		FinSi
	FinMientras												//El juego ha Terminado.
FinAlgoritmo
//Tab1 da un valor (0=vacio/1=ficha X/2=ficha O) a las posiciones, se verifica
//quién ganó al multiplicar estos valores en línea recta(X si da 1,O si da 8).(VER COMENTARIOS DE LAS LÍNEAS 49-57)
ALGORITMO CalcularInteres
	DEFINIR decimal Como Real;
	DEFINIR capitalInicial COMO REAL;
	DEFINIR tasaInteres COMO Entero;
	DEFINIR meses COMO ENTERO;
	DEFINIR interesSimple COMO REAL;
	DEFINIR interesCompuesto COMO REAl;
	ESCRIBIR "Ingrese el capital inicial: ";
	LEER capitalInicial;
	ESCRIBIR "Ingrese la tasa de inter�s anual (en porcentaje): ";
	LEER tasaInteres;
	ESCRIBIR "Ingrese la cantidad de meses: ";
	LEER meses;
	decimal <- (tasaInteres / 100) ;
	interesSimple <- capitalInicial * decimal * meses;
	interesCompuesto <- capitalInicial * ((1 + decimal) ^ meses - 1);
	ESCRIBIR "El inter�s simple acumulado en ", meses, " meses es: ", interesSimple;
	ESCRIBIR "El inter�s compuesto acumulado en ", meses, " meses es: ", interesCompuesto;
FinAlgoritmo

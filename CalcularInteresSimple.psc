ALGORITMO CalcularInteresSimple
	dEFINIR decimal Como Real;
	DEFINIR capital_inicial COMO REAL;
    DEFINIR tasa_interes COMO REAL;
    DEFINIR tiempo COMO REAL;
    DEFINIR simple_interes COMO REAL;
    ESCRIBIR "Ingrese el capital inicial: ";
    LEER capital_inicial;
    ESCRIBIR "Ingrese la tasa de interés";
    LEER tasa_interes;
    ESCRIBIR "Ingrese el tiempo";
    LEER tiempo;
 decimal  <- (tasa_interes/100);
 simple_interes <- capital_inicial * decimal * tiempo;
    ESCRIBIR "El interés simple es: ", simple_interes;
FINALGORITMO


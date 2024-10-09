Algoritmo mateo
DEFINIR capitalInicial COMO REAL;
DEFINIR tasaInteres COMO REAL;
DEFINIR meses COMO ENTERO;
DEFINIR interesAcumulado COMO REAL;
DEFINIR interessimple COMO REAL;
ESCRIBIR "Ingrese el capital inicial: ";
LEER capitalInicial;
ESCRIBIR "Ingrese la tasa de interés anual (en porcentaje): ";
LEER tasaInteres;
ESCRIBIR "Ingrese la cantidad de meses: ";
LEER meses;
interessimple <- (tasaInteres / 100) / 12;
interesAcumulado <- capitalInicial * interessimple * meses;
ESCRIBIR "El interés acumulado en ", meses, " meses es: ", interessimple;
FinAlgoritmo

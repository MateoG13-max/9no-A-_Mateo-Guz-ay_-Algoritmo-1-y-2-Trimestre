Algoritmo MateoGuznayEje7
definir n, n1, n2, s, r, m, d como enteros;
Escribir "Escoja un numero";
Escribir "1: +";
Escribir "2: -";
Escribir "3: *";	
Escribir "4: /";
Leer n;
Segun n Hacer
1:
Escribir"Ingrese el primer numero";
Leer n1;
Escribir"Ingres segundo numero ";
Leer n2;
s<-n1+n2;
Escribir"La suma es ",s;
2:
Escribir"Ingrese el primer numero";
Leer n1;
Escribir"Ingres segundo numero ";
Leer n2;
r<-n1-n2;
Escribir"La resta es ",r;
3:
Escribir"Ingrese el primer numero";
Leer n1;
Escribir"Ingres segundo numero ";
Leer n2;
m<-n1*n2;
Escribir "La multiplicacion es ",m;
4:
Escribir"Ingrese el primer numero";
Leer n1;
Escribir"Ingres segundo numero ";
Leer n2;
d<-n1/n2;
Escribir "La divicion es ",d;
De Otro Modo:
Escribir"ERROR: escriba un numero de 1-4";
FinSegun
FinAlgoritmo

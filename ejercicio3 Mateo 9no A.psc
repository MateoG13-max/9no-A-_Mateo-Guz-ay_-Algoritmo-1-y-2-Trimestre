Proceso ejercicio3
	definir n1, n2, n3, n4, s, r, p Como Real;
	escribir "                  Bienvenido al promedio institucional ";
	escribir "Escriba la nota del primer examen";
	leer n1;
	escribir "Escriba nota del segundo examen";
	leer n2;
	escribir "Escriba nota del tercer examen";
	leer n3;
	escribir "Escriba nota del cuarto examen";
	leer n4;
	s<-(n1+n2+n3+n4)/4;
	r<-(n1+n2+n3+n4)/4;
	p<-(n1+n2+n3+n4)/4;
	Si s>4 y s<7 Entonces
		escribir "El Estudiante Se a quedado Supletorio Con: ",s;
	SiNo
	Si r>=0 y r<4 Entonces
	escribir"El Estudiante a Reprovado el año Con: ",r;
	SiNo
	Si p>=7 y p<=10 Entonces
	escribir "El Estudiante a Pasado de año Con: ",p;
	FinSi
	FinSi
	FinSi
FinProceso
 
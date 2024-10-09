Proceso MateoG
    Definir n1, n2, n3 Como Real;
    Definir mayor, medio, menor Como Real;
	Escribir "Ingrese el primer número:";
    Leer n1;
    Escribir "Ingrese el segundo número:";
    Leer n2;
    Escribir "Ingrese el tercer número:";
    Leer n3;
    Si n1 > n2 Entonces
        Si n1 > n3 Entonces
            mayor <- n1;
            Si n2 > n3 Entonces
                medio <- n2;
                menor <- n3;
            SiNo
                medio <- n3;
                menor <- n2;
            FinSi
        SiNo
            mayor <- n3;
            medio <- n1;
            menor <- n2;
        FinSi
    SiNo
        Si n2 > n3 Entonces
            mayor <- n2;
            Si n1 > n3 Entonces
                medio <- n1;
                menor <- n3;
            SiNo
                medio <- n3;
                menor <- n1;
            FinSi
        SiNo
            mayor <- n3;
            medio <- n2;
            menor <- n1;
			Si n1 = n2 y n1 = n3 Entonces
				Escribir "ERROR: el numero debe ser distintos";
			SiNo
				Escribir "El mayor es: ", mayor;
				Escribir "El del medio es: ", medio;
				Escribir "El menor es: ", menor;	
			FinSi
        FinSi
    FinSi
FinProceso
	


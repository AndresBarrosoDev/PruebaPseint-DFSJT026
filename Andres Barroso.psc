Proceso Prueba
	
	Definir menu Como Entero;
	Escribir "*** Menú. ***";
	Escribir "1. Secuencial.";
	Escribir "2. Condicional Si Entonces.";
	Escribir "3. Condicional Si entonces anidado.";
	Escribir "4. Condicional Según.";
	Escribir "5. Repetitiva Mientras.";
	Escribir "6. Repetitiva Repetir.";
	Escribir "7. Repetitiva Para.";
	Escribir "8. Arreglo Simplie.";
	Escribir "9. Arreglo Bidimensional.";
	Escribir "10. Salir.";
	
	Leer menu;
	
	Segun menu Hacer
		1:
			Definir a, b, c Como Enteros;
			Definir promedio Como Real;
			Escribir "Ingrese 3 numeros y descubra el promedio.";
			Leer a;
			Leer b;
			Leer c;
			promedio<-SacarPromedio(a, b, c);
			Escribir "El promedio de los 3 numeros es: ", promedio;
			Escribir "";
		2:
			Definir nombre, genero Como Caracter;
			Definir AsignadorDeBano Como Logico;
			Escribir "Por favor, ingresa tu nombre.";
			Leer nombre;
			Escribir "Por favor, ingresa tu genero,";
			Escribir "Si eres hombre, ingresa una h.";
			Escribir "Si eres mujer, ingresa una m.";
			Leer genero;
			
			AsignadorDeBano<-DeterminarGenero(genero);
			Si AsignadorDeBano Entonces
				Escribir "Señor ", nombre, ", se le ha asignado el baño de hombres.";
			SiNo
				Escribir "Señorita ", nombre, ", se le ha asignado el baño de mujeres.";
			FinSi
			Escribir "";
		3:
			Definir bano, ducha Como Caracter;
			Definir MontoACobrar Como Entero;
			Escribir "El costo de usar el Baño, es de $250 pesos.";
			Escribir "¿Desea usar el baño? (s/n)";
			Leer bano;
			Escribir "El vosto de usar la Ducha es de $2500 pesos.";
			Escribir "¿Desea usar la ducha? (s/n)";
			Leer ducha;
			MontoACobrar <- CobroBano(bano, ducha);
			Escribir "Entonces, se te cobraran $", MontoACobrar, " al final de tu visita.";
			Escribir "";
		4:
			Definir num Como Entero;
			Definir NumeroEnPalabras Como Caracter;
			Escribir "Convierte tu numero en palabra.";
			Escribir "Ingrese un numero del 1 al 10.";
			Leer num;
			NumeroEnPalabras <- NumeroAPalabras(num);
			Escribir "Tu numero ha sido convertido a una palabra: ", NumeroEnPalabras;
			Escribir "";
		5:
			Escribir "No supe como crear un arreglo que se fuera extendiendo 1 espacio después de ingresar cada valor. Me confundí y me la salté";
			Escribir "Igualmente, lo que hice lo dejé comentado abajo.";
		6:
			Definir NombresConJ Como Caracter;
			Definir intentos Como Entero;
			Escribir "Ingrese nombres hasta descubrir el ganador.";
			Leer NombresConJ;
			intentos<-Concurso(NombresConJ);
			Escribir "Te tomó ", intentos, " intentos.";
		7:
			Escribir "El tiempo me pilló intentando hacer este Ejercicio.";
			Escribir "Salu2, maestro.";
//			Definir arreglo, ContarNombres Como Caracter;
//			Dimension arreglo[10];
//			Definir i Como Entero;
//			Escribir "Ingrese 10 nombres";
//			Para i<-0 Hasta 9 Hacer
//				Leer ContarNombres;
//				arreglo[i]<-ContarNombres;
//			FinPara
//			
//			Para i<-0 Hasta 9 Hacer
//				
//			FinPara
//			
//			Si NombresRepetidos Entonces
//				Escribir "Se repitieron estos nombres.";
//				Escribir arreglo[i];
//			FinSi
		8:
			Escribir "No la hice... aún.";
		9:
			Escribir "No la hice... aún.";
		10:
			Escribir "Saliendo...";
		De Otro Modo:
			Escribir "???";
	FinSegun
	
FinProceso

//Funcion 1: Deberá pedir 3 numeros y mostrar el promedio de estos.
SubProceso promedio <- SacarPromedio(a, b, c)
	Definir promedio Como Real;
	promedio<-(a+b+c)/3;
FinSubProceso

//Funcion 2: En un lugar tradicional antiguo se pedirá Nombre y Genero de la persona, 
//siendo el genero determinante para derivarlo al baño de mujeres u hombres.
SubProceso AsignadorDeBano <- DeterminarGenero(genero)
	Definir AsignadorDeBano Como Logico;
	Si (genero = "hombre") o (genero = "h") Entonces
		AsignadorDeBano<-Verdadero;
	FinSi
	
	Si (genero = "mujer") o (genero = "m")Entonces
		AsignadorDeBano<-Falso;
	FinSi
FinSubProceso

//Funcion 3: Condiserar funcion 2, y adicionar cobro de $250 si desea utilizar el baño 
//o $2500 si desea utilizar la ducha.
SubProceso MontoACobrar <- CobroBano(bano, ducha)
	Definir MontoACobrar Como Entero;
	MontoACobrar<-0;
	Si (bano = "s") Entonces
		MontoACobrar <- MontoACobrar + 250;
	FinSi
	Si (ducha = "s") Entonces
		MontoACobrar <- MontoACobrar + 2500;
	FinSi
FinSubProceso

//Funcion 4: Ingrese un numero del 1 al 10 y muestre el numero en palabras.
SubProceso NumeroEnPalabras <- NumeroAPalabras(num)
	Definir NumeroEnPalabras Como Caracter;
	Segun num Hacer
		1:
			NumeroEnPalabras <- "Uno";
		2:
			NumeroEnPalabras <- "Dos";
		3:
			NumeroEnPalabras <- "Tres";
		4:
			NumeroEnPalabras <- "Cuatro";
		5:
			NumeroEnPalabras <- "Cinco";
		6:
			NumeroEnPalabras <- "Seis";
		7:
			NumeroEnPalabras <- "Siete";
		8:
			NumeroEnPalabras <- "Ocho";
		9:
			NumeroEnPalabras <- "Nueve";
		10:
			NumeroEnPalabras <- "Diez";
		De Otro Modo:
			NumeroEnPalabras <- "???";
	FinSegun
FinSubProceso

//Funcion 5: Ingresar N numeros, detener el ingreso al digitar un cero.
//Terminado el proceso, mostrar cantidad de numeros ingresados excluyendo el 0.
//Finalmente, calcular el promedio de estos numeros.
//	SubProceso asdf
//		Definir i, contador, GuardadoNumeros Como Entero;
//		i<-1;
//		contador<-1;
//		Dimension GuardadoNumeros[contador];
//		
//		Escribir "Ingrese numeros.";
//		Mientras (i <> 0) Hacer
//			Leer i;
//			contador<-contador+1;
//			GuardadoNumeros[contador]<-i;
//		FinMientras
//	FinSubProceso

//Funcion 6: Ingresa N nombres con "J", cuando ingrese el nombre "Juan", me diga
//"GANASTE" y muestre la cantidad de intentos antes de haber ganado.
SubProceso intentos <- Concurso(NombresConJ)
	Definir intentos Como Entero;
	intentos<-1;
	Repetir
		Leer NombresConJ;
		intentos<-intentos+1;
	Hasta Que NombresConJ = "Juan";
	
	Si NombresConJ = "Juan" Entonces
		Escribir "¡GANASTE!";
	FinSi
FinSubProceso
//Funcion 7: Para un maximo de 10 personas preguntar su nombre y mostrar los que se
//repiten más de 1 vez. En caso de que los nombres no se repitan, mostrar que no
//existen nombres repetidos.




Función resultado <- Sumar(num1,num2)
	Si (num1<>0 Y num2<>0) Entonces
		resultado <- ConvertirATexto(num1+num2)
	SiNo
		resultado <- 'No se suma si ambos son cero'
	FinSi
FinFunción

Función resultado <- restar(num1,num2)
	Si (num1<>0 Y num2>0 O num2<num1) Entonces
		resultado <- ConvertirATexto(num1-num2)
	SiNo
		resultado <- 'No se resta si hay ceros'
	FinSi
FinFunción

Función resultado <- multiplicar(num1,num2)
	Si (num1<>0 O num2<>0) Entonces
		resultado <- ConvertirATexto(num1*num2)
	SiNo
		resultado <- 'No se multiplica si hay ceros'
	FinSi
FinFunción

Función resultado <- dividir(num1,num2)
	Si (num2<>0) Entonces
		resultado <- ConvertirATexto(num1/num2)
	SiNo
		resultado <- 'No se divide si hay ceros'
	FinSi
FinFunción

Algoritmo Clases_refuerzo_funciones
	Escribir 'Inserte el numero1'
	Leer num1
	Escribir 'ingrese el numero 2'
	Leer num2
	Escribir 'Ingrese la operacion que desea realizar'
	Repetir
		Leer signo
		Si signo='+' Entonces
			res <- Sumar(num1,num2)
		SiNo
			Si signo='-' Entonces
				res <- restar(num1,num2)
			SiNo
				Si signo='*' Entonces
					res <- multiplicar(num1,num2)
				SiNo
					Si signo='/' Entonces
						res <- dividir(num1,num2)
					SiNo
						Escribir 'Ingrese una operacion valida +-/*'
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que signo=='+' O signo=='-' O signo=='*' O signo=='/'
	Escribir res
FinAlgoritmo

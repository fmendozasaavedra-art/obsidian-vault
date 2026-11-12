Algoritmo Actividad4
	Definir op, i, k, d, obj, intento, cantPos, cantNeg, ceros, codigo, mas600, cant Como Entero
	Definir num, x, prod, fact, sumPos, sumNeg, litros, precio, total, litrosArt1, sueldo, maximo Como Real
	Definir linea, digito Como Caracter
	Repetir
		Escribir ""
		Escribir "===== EJERCICIOS ACTIVIDAD 4 ====="
		Escribir "1. Cuadrado hasta numero negativo"
		Escribir "2. Adivinar un numero"
		Escribir "3. Producto de los 10 primeros impares"
		Escribir "4. Factorial"
		Escribir "5. Medias de positivos/negativos y ceros"
		Escribir "6. Tabla de multiplicar"
		Escribir "7. Facturas de desinfectantes"
		Escribir "8. Sueldo maximo"
		Escribir "9. Contador de 5 digitos (3 -> E)"
		Escribir "0. Salir"
		Escribir Sin Saltar "Elige una opcion: "
		Leer op
		Segun op Hacer
			1:
				Repetir
					Escribir Sin Saltar "Ingrese un numero: "
					Leer num
					Si num >= 0 Entonces
						Escribir "Cuadrado: ", num * num
					FinSi
				Hasta Que num < 0
			2:
				Escribir Sin Saltar "Jugador 1, ingrese el numero a adivinar: "
				Leer obj
				Repetir
					Escribir Sin Saltar "Jugador 2, adivine el numero: "
					Leer intento
					Si intento > obj Entonces
						Escribir "Tu numero es MAYOR que N."
					SiNo
						Si intento < obj Entonces
							Escribir "Tu numero es MENOR que N."
						FinSi
					FinSi
				Hasta Que intento = obj
				Escribir "Acertaste!"
			3:
				prod <- 1
				Para i <- 1 Hasta 10 Hacer
					prod <- prod * (2 * i - 1)
				FinPara
				Escribir "El producto de los 10 primeros impares es: ", prod
			4:
				Repetir
					Escribir Sin Saltar "Ingrese un numero (>= 0): "
					Leer cant
				Hasta Que cant >= 0
				fact <- 1
				Para i <- 2 Hasta cant Hacer
					fact <- fact * i
				FinPara
				Escribir "El factorial de ", cant, " es: ", fact
			5:
				cantPos <- 0
				cantNeg <- 0
				ceros <- 0
				sumPos <- 0
				sumNeg <- 0
				Para i <- 1 Hasta 10 Hacer
					Escribir Sin Saltar "Numero ", i, ": "
					Leer x
					Si x > 0 Entonces
						sumPos <- sumPos + x
						cantPos <- cantPos + 1
					SiNo
						Si x < 0 Entonces
							sumNeg <- sumNeg + x
							cantNeg <- cantNeg + 1
						SiNo
							ceros <- ceros + 1
						FinSi
					FinSi
				FinPara
				Si cantPos > 0 Entonces
					Escribir "Media de positivos: ", sumPos / cantPos
				SiNo
					Escribir "No hay numeros positivos."
				FinSi
				Si cantNeg > 0 Entonces
					Escribir "Media de negativos: ", sumNeg / cantNeg
				SiNo
					Escribir "No hay numeros negativos."
				FinSi
				Escribir "Cantidad de ceros: ", ceros
			6:
				Repetir
					Escribir Sin Saltar "Ingrese un numero entre 0 y 10: "
					Leer cant
				Hasta Que cant >= 0 Y cant <= 10
				Para i <- 1 Hasta 10 Hacer
					Escribir cant, " x ", i, " = ", cant * i
				FinPara
			7:
				total <- 0
				litrosArt1 <- 0
				mas600 <- 0
				Para i <- 1 Hasta 5 Hacer
					Escribir "--- Factura ", i, " ---"
					Escribir Sin Saltar "Codigo del articulo: "
					Leer codigo
					Escribir Sin Saltar "Litros vendidos: "
					Leer litros
					Escribir Sin Saltar "Precio por litro: "
					Leer precio
					total <- total + litros * precio
					Si codigo = 1 Entonces
						litrosArt1 <- litrosArt1 + litros
					FinSi
					Si litros > 600 Entonces
						mas600 <- mas600 + 1
					FinSi
				FinPara
				Escribir "Facturacion total: ", total
				Escribir "Litros vendidos del articulo 1: ", litrosArt1
				Escribir "Facturas de mas de 600 litros: ", mas600
			8:
				Repetir
					Escribir Sin Saltar "Cuantos sueldos va a ingresar: "
					Leer cant
				Hasta Que cant > 0
				maximo <- 0
				Para i <- 1 Hasta cant Hacer
					Escribir Sin Saltar "Sueldo ", i, ": "
					Leer sueldo
					Si i = 1 O sueldo > maximo Entonces
						maximo <- sueldo
					FinSi
				FinPara
				Escribir "El sueldo maximo es: ", maximo
			9:
				Para cant <- 0 Hasta 99999 Hacer
					linea <- ""
					Para k <- 4 Hasta 0 Con Paso -1 Hacer
						d <- trunc(cant / 10 ^ k) % 10
						Si d = 3 Entonces
							digito <- "E"
						SiNo
							digito <- ConvertirATexto(d)
						FinSi
						Si k = 4 Entonces
							linea <- digito
						SiNo
							linea <- Concatenar(linea, Concatenar("-", digito))
						FinSi
					FinPara
					Escribir linea
				FinPara
			0:
				Escribir "Fin del programa."
			De Otro Modo:
				Escribir "Opcion no valida."
		FinSegun
	Hasta Que op = 0
FinAlgoritmo

				TITLE	Programa para contar los elementos positivos de un arreglo usando procedimientos

Include Macros.inc

; Prototipos de llamadas al sistema
GetStdHandle	PROTO	:QWORD
ReadConsoleW	PROTO	:QWORD,	:QWORD,	:QWORD,	:QWORD,	:QWORD
WriteConsoleW	PROTO	:QWORD,	:QWORD,	:QWORD,	:QWORD,	:QWORD
ExitProcess		PROTO	codigoSalida:QWORD

				.DATA
Arreglo1		QWORD	5 DUP ( ? )
Arreglo2		QWORD	10 DUP ( ? )
Positivos		QWORD	?
Negativos		QWORD	?
StrArr01		WORD	'A', 'r', 'r', 'e', 'g', 'l', 'o', ' ', '1'
StrArr02		WORD	'A', 'r', 'r', 'e', 'g', 'l', 'o', ' ', '2'
MenEnt01		WORD	'P', 'r', 'o', 'p', 'o', 'r', 'c', 'i', 'o', 'n', 'e', ' ', 'u', 'n', ' ', 'e', 'l', 'e', 'm', 'e', 'n', 't', 'o', ':', ' '
MenSal01		WORD	'E', 'l', ' ', 't', 'o', 't', 'a', 'l', ' ', 'd', 'e', ' ', 'p', 'o', 's', 'i', 't', 'i', 'v', 'o', 's', ' ', 'e', 's', ':', ' '
MenSal02		WORD	'E', 'l', ' ', 't', 'o', 't', 'a', 'l', ' ', 'd', 'e', ' ', 'n', 'e', 'g', 'a', 't', 'i', 'v', 'o', 's', ' ', 'e', 's', ':', ' '

; Variables usadas con las funciones del sistema
STD_INPUT		EQU		-10
STD_OUTPUT		EQU		-11
ManejadorE		QWORD	?
ManejadorS		QWORD	?
Caracteres		QWORD	?
Texto			WORD	13 DUP ( ? )
SaltoLinea		WORD	13, 10

				.CODE
Principal		PROC

				; Alinear espacio en la pila
				SUB		RSP, 40

				; Obtener manejador est�ndar de teclado
				MOV		RCX, STD_INPUT
				CALL	GetStdHandle
				MOV		ManejadorE, RAX

				; Obtener manejador est�ndar de salida
				MOV		RCX, STD_OUTPUT
				CALL	GetStdHandle
				MOV		ManejadorS, RAX

				; Mostrar nombre del Arreglo1
				MOV		RCX, ManejadorS
				LEA		RDX, StrArr01
				MOV		R8, LENGTHOF StrArr01
				LEA		R9, Caracteres
				MOV		R10, 0
				CALL	WriteConsoleW

				; Ciclo para leer los 5 n�meros de Arreglo1

				; Mostrar nombre del Arreglo2
				MOV		RCX, ManejadorS
				LEA		RDX, StrArr02
				MOV		R8, LENGTHOF StrArr02
				LEA		R9, Caracteres
				MOV		R10, 0
				CALL	WriteConsoleW

				; Ciclo para leer los 10 n�meros de Arreglo2


				; Llamar al m�todo ContarPositivos
				; Pasando los datos de Arreglo1
				; Poner en RCX la direcci�n de Arrreglo1
				; Poner en RDX el n�mero de elementos de Arreglo1
				; Llamar al procedimiento
				; Guardar en la variable Positivos el valor de retorno del procedimiento
				; Calcular el valor de la variable Negativos por diferencia entre el total de elementos - Positivos


				; Mostrar nombre del Arreglo1
				MOV		RCX, ManejadorS
				LEA		RDX, StrArr01
				MOV		R8, LENGTHOF StrArr01
				LEA		R9, Caracteres
				MOV		R10, 0
				CALL	WriteConsoleW

				; Mostrar el total de positivos de Arreglo1
				; Mostrar salto de l�nea
				; Mostrar el total de negativos de Arreglo1
				; Mostrar salto de l�nea



				; Llamar al m�todo ContarPositivos
				; Pasando los datos de Arreglo2
				; Poner en RCX la direcci�n de Arrreglo2
				; Poner en RDX el n�mero de elementos de Arreglo2
				; Llamar al procedimiento
				; Guardar en la variable Positivos el valor de retorno del procedimiento
				; Calcular el valor de la variable Negativos por diferencia entre el total de elementos - Positivos


				; Mostrar nombre del Arreglo2
				MOV		RCX, ManejadorS
				LEA		RDX, StrArr02
				MOV		R8, LENGTHOF StrArr02
				LEA		R9, Caracteres
				MOV		R10, 0
				CALL	WriteConsoleW

				; Mostrar el total de positivos de Arreglo2
				; Mostrar salto de l�nea
				; Mostrar el total de negativos de Arreglo2
				; Mostrar salto de l�nea

				; Terminar y regresar al sistema operativo
				MOV		RCX, 0
				CALL	ExitProcess
Principal		ENDP

; Procedimiento ContarPositivos
; Este procedimiento recibe como argumentos la direcci�n de inicio del
; arreglo y el n�mero de elementos del arreglo.
; RCX = Direcci�n de inicio del arreglo
; RDX = N�mero de elementos del arreglo
; Regresa el resultado en el registro RAX

ContarPositivos	PROC
				; PROLOGO
				; Marco de pila. Guardar registro RBP y hacer RBP = RSP

				; Marco de pila. Dejar espacio para las variables locales
				; La variable local es de 8 bytes, por lo que se resta 8 al registro RSP

				; Marco de pila. Guardar los registro a utilizar en el procedimiento
				
				; 
				; Ciclo para contar los elementos positivos del arreglo
				MOV		RSI, RCX			; Primer argumento
				MOV		RCX, RDX			; Segundo aegumento

				; Inicializar en 0 la variable local
Ciclo:
				LOOP	Ciclo

				; Poner valor de retorno en el registro RAX

				; EPILOGO
				; Marco de pila. Recuperar registros almacenados

				; Marco de pila. Eliminar variable local
				
				; Marco de pila. Restaurar el registro EBP

				; Marco de pila. Sacar direcci�n de retorno y argumentos
				RET
ContarPositivos	ENDP
				END
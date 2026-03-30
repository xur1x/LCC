;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |PRACTICA 2  xur1x|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;-------------------------------------------
; PRACTICA 2   -  Uriel Hoyos
;-------------------------------------------




;-------------------------------------------
; 1.3 Diseñemos funciones simples
;-------------------------------------------



;################## 1 #######################

; Representamos numeros.     (1)  Dise;o de datos

; Number Number -> Number
; Recibe dos numeros  x e y, y devuelve        (2)  Signatura
; la distancia al origen del punto (x,y).

; Entrada: 1 1 , salida: #i1.4142135623730951
; Entrada: 5 5 , salida: #i7.0710678118654755   (3)  Ejemplos 
; Entrada: 3 2 , salida: #i3.605551275463989

; codigo    (4)
(define (distancia-punto x y) (sqrt (+ (sqr x) (sqr y))))


;(distancia-punto 1 1)  =  #i1.4142135623730951
;(distancia-punto 5 5)  =  #i7.0710678118654755   (5)  testing 
;(distancia-punto 3 2)  =  #i3.605551275463989





;################## 2 #######################


;----------------------------------------
; DISEÑO DE DATOS

; Representamos numeros.
;----------------------------------------
; SIGNATURA

; Number Number Number Number -> Number
; Recibe dos pares ordenados del plano y
; calcula la distancia entre ellos.
;----------------------------------------
; EJEMPLOS

; Entrada: 1 1 , 3 2 , salida: #i2.23606797749979
; Entrada: 1 1 , 3 3 , salida: #i2.8284271247461903
; Entrada: 3 3 , 6 5 , salida: #i3.605551275463989
;----------------------------------------
; CODIGO

(define (distancia-entre-puntos x1 y1 x2 y2)
        (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1)))))

;----------------------------------------
; TESTING

; (distancia-entre-puntos 1 1 3 2)  =  #i2.23606797749979
; (distancia-entre-puntos 1 1 3 3)  =  #i2.8284271247461903
; (distancia-entre-puntos 3 3 6 5)  =  #i3.605551275463989



;################## 3 #######################


;----------------------------------------
; DISEÑO DE DATOS

; Representamos numeros.
;----------------------------------------
; SIGNATURA

; Number -> Number
; Recibe un numero que es la longitud de la
; arista de un cubo y calcula su volumen.

;----------------------------------------
; EJEMPLOS

; Entrada: 1, salida: 1
; Entrada: 3, salida: 27
; Entrada: 5, salida: 125
;----------------------------------------
; CODIGO

(define (vol-cubo z) (* z z z))

;----------------------------------------
; TESTING

(check-expect (vol-cubo 1) 1)
(check-expect (vol-cubo 3) 27)
(check-expect (vol-cubo 5) 125)
;----------------------------------------


;################## 4 #######################


;----------------------------------------
; DISEÑO DE DATOS

; Representamos numeros.
;----------------------------------------
; SIGNATURA

; Number -> Number
; Recibe un numero que es la longitud de la
; arista de un cubo y calcula su volumen.

;----------------------------------------
; EJEMPLOS

; Entrada: 1, salida: 1
; Entrada: 3, salida: 54
; Entrada: 5, salida: 125
;----------------------------------------
; CODIGO

(define (area-cubo a) (* 6 (sqr a)))

;----------------------------------------
; TESTING

(check-expect (area-cubo 3) 54)
(check-expect (area-cubo 5) 150)
(check-expect (area-cubo 10) 600)


;################## 5 #######################


;----------------------------------------
; DISEÑO DE DATOS

; Representamos strings y numeros.
;----------------------------------------
; SIGNATURA

; String Number -> Number
; Recibe un string y un numero n, este ultimo sera la
; que sera la n-esima posicion en la cual se coloca el "-"

;----------------------------------------
; EJEMPLOS

; Entrada: "hola" 3 , salida: "hol-a"
; Entrada: "hola" 0 , salida: "-hola"
; Entrada: "hola" 1 , salida: "h-ola"
;----------------------------------------
; CODIGO

(define (principioS s n) (substring s 0 n))

(define (finalS s n) (substring s n (string-length s)))

(define (poner- s n) (string-append (principioS s n) "-" (finalS s n)))

;----------------------------------------
; TESTING

(check-expect (poner- "hola" 3) "hol-a")
(check-expect (poner- "hola" 0) "-hola")
(check-expect (poner- "hola" 1) "h-ola")





;################## 6 #######################


;----------------------------------------
; DISEÑO DE DATOS

; Representamos Representamos la cadena de caracteres con un string.

;----------------------------------------
;----------------------------------------
; SIGNATURA

; string-last: String -> String
; Recibe un cadena no vacía y retorna su último caracter.

;----------------------------------------
; EJEMPLOS

; Entrada: "hola" , salida: "a"
; Entrada: "hola, mundo" , salida: "o"
; Entrada: "argentina" , salida: "a"
;----------------------------------------
; CODIGO

(define
(string-last s)
(substring s (- (string-length s) 1) (string-length s)))

;----------------------------------------
; TESTING

(check-expect (string-last "Hola") "a")
(check-expect (string-last "Hola, mundo") "o")
(check-expect (string-last "argentina") "a")






;################## 7 #######################


;----------------------------------------
; DISEÑO DE DATOS

; Representamos la cadena de caracteres con un string.
;----------------------------------------
; SIGNATURA

; string-last2: String -> String
; Recibe un cadena no vacía y retorna la misma sin su último caracter.
;----------------------------------------
; EJEMPLOS

;Entrada: "Hola mundo" , Salida: "Hola mund"

;Entrada: "Estres" , Salida: "Estre"

;Entrada: "Sopar" , Salida: "Sopa"

;----------------------------------------
; CODIGO

(define
(string-last2 s)
(substring s 0 (- (string-length s) 1)))

;----------------------------------------
; TESTING

(check-expect (string-last2 "Hola mundo") "Hola mund")
(check-expect (string-last2 "Estres") "Estre")
(check-expect (string-last2 "Sopar") "Sopa")



;################## 8 #######################
;




;################## 9 #######################

;valor original de la cuota
(define VC 650)


;Función de descuento
;porcentaje: Number -> Number
(define (funcion-descuento monto porciento) (- monto (* (/ porciento 100) monto)))

(check-expect (funcion-descuento 1000 50) 500)
(check-expect (funcion-descuento 30 50) 15)
(check-expect (funcion-descuento 10 50) 5)


;Representamos personas mediante numeros
; (monto-persona cant-per) Numer -> Number
; Calcula el precio de la cuota con el descuento aplicado

(define (monto-persona cant-per cant-meses)

  (cond [(and (equal? 2 cant-per) (= cant-meses 1)) (* cant-per (funcion-descuento VC 10))]
        [(and (equal? 2 cant-per) (= cant-meses 2)) (* cant-per (funcion-descuento VC 25))]
        [(and (equal? 2 cant-per) (>= cant-meses 3)) (* cant-per (funcion-descuento VC 35))]

        
        [(and (equal? 1 cant-per) (= cant-meses 1))  VC]
        [(and (equal? 1 cant-per) (= cant-meses 2))  (* cant-meses (funcion-descuento VC 15))]
        [(and (equal? 1 cant-per) (>= cant-meses 3)) (* cant-meses (funcion-descuento VC 25))]
        
        
        [(and (>= 3 cant-per) (= cant-meses 1))     (* cant-per (funcion-descuento VC 20))]
        [(and (>= 3 cant-per) (= cant-meses 2))     (* cant-per (funcion-descuento VC 35))]
        [(and (>= 3 cant-per) (= cant-meses 3))     (* cant-per (funcion-descuento VC 35))]
        [else "No se puede abonar con numeros negativos"]))

;---------------------------------------------------
;          TESTING
;
; Supogamos que Pedro y Juan deciden anotarse al curso de Portugués
; pagando 2 meses juntos, obtendrán un descuento del 25%, debiendo pagar $975 cada uno.
(check-expect (monto-persona 2 2) 975)

; Si Pedro y Juan también invitan a Paula y cancelan 3 meses juntos, recibirán una
; reducción del 35%, debiendo abonar $1267.50 cada uno.
(check-expect (monto-persona 3 3) 1267.50)

;Si José se anota solo, pero paga 5 cuotas juntas, entonces deberá abonar $2437.5
(check-expect (monto-persona 1 5) 2437.50)




;################## 10 #######################

; Si el nivel de hemoglobina que tiene una persona
; es menor que el valor mínimo que le corresponde
; de acuerdo a su edad, el resultado del análisis es "anemia positivo"
;y en caso contrario es "anemia negativo".










;################## 11 #######################

; Diseño de datos:
; Es trivial
; Declaración de propósito:
; Dados dos números, determina el promedio
; Signatura:
; Number Number -> Number
; Casos de prueba:
(check-expect (promedio 2 3) 2.5)
(check-expect (promedio -2 8) 3)
(check-expect (promedio -5 -4) -4.5)

(define (promedio a b) (/ (+ a b) 2))


; Diseño de datos:
; Es trivial
; Declaración de propósito:
; Determina si tres números conforman una terna autopromediable o no.
; Signatura:
; Number Number Number -> Bool
; Casos de prueba:
(check-expect (autopromediable? 7 5 9) true)
(check-expect (autopromediable? -15 -15 -15) true)
(check-expect (autopromediable? -0.5 12 -13) true)
(check-expect (autopromediable? 15 12 30) false)
(check-expect (autopromediable? -15 -12 -30) false)

(define (autopromediable? a b c) (= (promedio (max a b c) (min a b c))
(- (+ a b c) (+ (max a b c) (min a b c)))))

; Diseño de datos:
; Es trivial
; Declaración de propósito:
; Dados tres números, devuelve el producto de ellos en caso que formen una terna
; autopromediable, y la suma de los mismos en caso contrario.
; Signatura
; Number Number Number -> Number
; Casos de prueba:
(check-expect (ejercicio11 7 5 9) 315)
(check-expect (ejercicio11 -7 -5 -9) -315)
(check-expect (ejercicio11 15 12 30) 57)
(check-expect (ejercicio11 -15 -12 -30) -57)
(define (ejercicio11 a b c) (if (autopromediable? a b c) (* a b c) (+ a b c)))



;################## 12 ####################### completar.....






















;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |practica5 parte1|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Práctica 5, Primera Parte

;-----------------------
; EJERCICIO 1
;-----------------------

(define CONTACTO1 (list "Ricardo" "Tano" "Osvaldo" "Walter" "Beto"))
(define CONTACTO2 (cons "Mayhem" (cons "Sepultura" (cons "Kreator" (cons "Hermetica" (cons "Horcas" '()))))))


;-----------------------
; EJERCICIO 2
;-----------------------



;-----------------------
; EJERCICIO 3
;-----------------------

; contiene-Marcos? : Contactos -> Booleano
; dada una lista de Contactos, determina si "Marcos" es un elemento de la misma
(check-expect (contiene-Marcos? '()) #false)
(check-expect (contiene-Marcos? (cons "Sara" (cons "Pedro"  (cons "Esteban" '())))) #false)
(check-expect (contiene-Marcos? (cons "A" (cons "Marcos" (cons "C" '())))) #true)
(check-expect (contiene-Marcos? (cons "Juan" '())) #false)
(check-expect (contiene-Marcos? (cons "Marcos" '())) #true)


(define (contiene-Marcos? l) (cond [(empty? l) #false]
                                   [(cons? l) (if (string=? (first l) "Marcos")
                                                  #true
                                                  (contiene-Marcos? (rest l)))]))

;-----------------------
; EJERCICIO 4
;-----------------------

;(contiene-Marcos? (cons "Eugenia"
;  (cons "Lucía"
;    (cons "Dante"
;      (cons "Federico"
;        (cons "Marcos"
;          (cons "Gabina"
;            (cons "Laura"
;              (cons "Pamela" '()))))))))
;)


;-----------------------
; EJERCICIO 5
;-----------------------

; contiene: List String -> bool
; Dada una lista y un string, retorna #true
; si encontro el string en la lista
(define (contiene lst str) (cond [(empty? lst) #false]
                                 [(cons? lst) (if (equal? str (first lst))
                                                  #true
                                                  (contiene (rest lst) str))]))

;--- TESTING ---
(check-expect (contiene (list "Iorio" "Tano" "Osvaldo") "Iorio") #t)
(check-expect (contiene (list "Manzana" "Casa" "arbol") "arbol") #t)
(check-expect (contiene '() "77") #f)


;-----------------------
; EJERCICIO 6
;-----------------------

;Realice la evaluación paso a paso usando DrRacket para la siguiente expresión:
;(contiene-Marcos? (cons "Marcos" (cons "C" '())))

;def (empty? (cons "Marcos" (cons "C" '()))) == False
;def (cons? (cons "Marcos" (cons "C" '()))) == True
;def (if (string=? (first (cons "Marcos" (cons "C" '())) "Marcos"))) == True


;Use también el evaluador paso a paso para esta otra expresión:
;(contiene-Marcos? (cons "A" (cons "Marcos" (cons "C" '()))))
;...


;-----------------------
; EJERCICIO 7
;-----------------------

;Una Lista-de-montos es:
;– '()
;– (cons NumeroPositivo Lista-de-montos)
;Lista-de-montos representa una lista con montos de dinero

(define LST-MONTO1 (cons 2 '()))
(define LST-MONTO2 (cons 5 (cons 2 (cons 20 '()))))
(define LST-MONTO3 (list 1 2 3 4 5))


; suma: Listofnumber -> Number
; Dada una lista de numeros retorna la suma
; de todos sus elementos
; (suma LST-MONTO1) == 2
; (suma LST-MONTO2) == 27
; (suma LST-MONTO3) == 15
(define (suma lst) (cond [(empty? lst) 0]
                         [(cons? lst) (+ (first lst) (suma (rest lst)))]))

;--- TESTING ---
(check-expect (suma LST-MONTO1) 2)
(check-expect (suma LST-MONTO2) 27)
(check-expect (suma LST-MONTO3) 15)


;-----------------------
; EJERCICIO 8
;-----------------------
;Una Lista-de-numeros es:
;– '()
;– (cons Numero Lista-de-numeros)

(define LST-POS1 (list 1 2 3 4 5))
(define LST-POS2 (list 1 2 3 4 -5))
(define LST-POS3 (cons 1 (cons 2 (cons -3 empty))))
(define LST-POS4 (list -11 2 3 4 -5))
(define LST-POS5 (cons 1 (cons 2 (cons 3 empty))))

; pos: lista -> bool
; dada una lista, determina si todos los elementos
; de ella son numero positivos
(define (pos? lst) (cond [(empty? lst) #t]
                         [(cons? lst) (if (> (first lst) 0)
                                          (pos? (rest lst))
                                          #f)]))

;--- TESTING ---
(check-expect (pos? LST-POS1) #t)
(check-expect (pos? LST-POS2) #f)
(check-expect (pos? LST-POS3) #f)


; checked-sum: lst -> Number
; Dada una lista-de-numeros, retorna la suma de todos los
; elementos. En caso de no ser una lista-de-numeros
; devuelve un string indicando error.
(define (checked-suma lst) (if (pos? lst)
                               (suma lst)
                               "Error, no es una lista-de-num"))
;--- TESTING ---
(check-expect (checked-suma LST-POS1) 15)
(check-expect (checked-suma LST-POS2) "Error, no es una lista-de-num")



;-----------------------
; EJERCICIO 9
;-----------------------

; todos-verdad: List -> Bool
; dada una lista de booleanos, retorna #t
; si todos sus elementos son verdaderos
; (todos-verdad (list #t #t #t)) == #true
; (todos-verdad (list #t #f #t)) == #false
(define (todos-verdad lst) (cond [(empty? lst) #t]
                                 [(cons? lst) (if (equal? (first lst) #t)
                                                  (todos-verdad (rest lst))
                                                  #f)]))
;--- TESTING ---
(check-expect (todos-verdad (list #t #t #t)) #t)
(check-expect (todos-verdad (list #t #f #t)) #f)
(check-expect (todos-verdad (list #f #f #f)) #f)



; uno-verdad: List -> Bool
; Dada una lista, reetorna #t si
; hay al menos un #t dentro de la misma
; (uno-verdad (list #t #t #t)) == #t
; (uno-verdad (list #f #f #f)) == #f
; (uno-verdad (list #f #f #f #t)) == #t
(define (uno-verdad lst) (cond [(empty? lst) #f]
                               [(cons? lst) (if (equal? (first lst) #t)
                                                #t
                                                (uno-verdad (rest lst)))]))

;--- TESTING ---
(check-expect (uno-verdad (list #t #t #t)) #t)
(check-expect (uno-verdad (list #f #f #f)) #f)
(check-expect (uno-verdad (list #f #f #f #t)) #t)


;-----------------------
; EJERCICIO 10
;-----------------------

; cant-elementos: List -> Number
; Dada una lista, devuelve la cantidad de
; elemntos de la misma
; (cant-elementos (list 1 2 3 4 5 6)) == 6
; (cant-elementos (list 1 2)) == 2
; (cant-elementos (cons 0 '())) == 1
(define (cant-elementos lst) (cond [(empty? lst) 0]
                                   [(cons? lst) (+ 1 (cant-elementos (rest lst)))]))

;--- TESTING ---
(check-expect (cant-elementos (list 1 2 3 4 5 6)) 6)
(check-expect (cant-elementos (list 1 2)) 2)
(check-expect (cant-elementos (cons 0 '())) 1)



;-----------------------
; EJERCICIO 11
;-----------------------

;promedio: List -> Number
; dada una lista, calcula el promedio de la misma
(define (promedio lst) (cond [(empty? lst) 0]
                             [(cons? lst) (/ (suma lst) (cant-elementos lst))]))

;--- TESTING ---
(check-expect (promedio (list 1 2 3)) 2)
(check-expect (promedio (list 1 2 3 4 5)) 3)
(check-expect (promedio (list 0)) 0)


;-----------------------
; EJERCICIO 12
;-----------------------


; pares: List -> List
; Dada una lista, retorna la misma
; solo con sus elementos pares
; (pares (list 1 2 3 4 5 6)) == (list 2 4 6)
; (pares (list 1 3 5 )) == empty
(define (pares lst) (cond [(empty? lst) empty]
                          [(cons? lst) (if (even? (first lst))
                                           (cons (first lst) (pares (rest lst)))
                                           (pares (rest lst)))]))

;--- TESTING ---
(check-expect (pares (list 1 2 3 4 5 6)) (list 2 4 6))
(check-expect (pares (list 1 3 5 )) empty)
(check-expect (pares (list 4 6 3 7 5 0)) (list 4 6 0))


;-----------------------
; EJERCICIO 13
;-----------------------

; cortas: List -> List
; dada una lista, rtorna la misma con las palabras
; de longitud menores a 5
(define (cortas lst) (cond [(empty? lst) empty]
                           [(cons? lst) (if (< (string-length (first lst)) 5)
                                            (cons (first lst) (cortas (rest lst)))
                                            (cortas (rest lst)))]))

;--- TESTING ---
(define L1 (list "arbol" "manzana" "casa" "ola"))
(define L2 (list "mina" "hada" "casa" "papel"))
(define L3 (list "lapiz" "sacapuntas" "aguas"))
(check-expect (cortas L1) (list "casa" "ola"))
(check-expect (cortas L2) (list "mina" "hada" "casa"))
(check-expect (cortas L3) empty)
(check-expect (cortas (list "Lista" "de" "palabras" "sin" "sentido")) (list "de" "sin"))



;-----------------------
; EJERCICIO 14
;-----------------------

; mayores: List Number -> List
; Dada una lista y un numero, retorna la lista
; con los elementos que son mayores a ese numero.
(define (mayores lst n) (cond [(empty? lst) empty]
                              [(cons? lst) (if (> (first lst) n)
                                               (cons (first lst) (mayores (rest lst) n))
                                               (mayores (rest lst) n))]))
;--- TESTING ---
(define L1z (list 1 2 3 4 5 6 7))
(check-expect (mayores L1z 2) (list 3 4 5 6 7))
(check-expect (mayores L1z 0) L1z)



;-----------------------
; EJERCICIO 15
;-----------------------

; cerca: List -> List
; Dada una lista de puntos en el plano, retorna
; la lista con los elemeentos quee son menor a MAX
; del origen, donde MAX ees:
(define MAX 5)

(define (cerca lst)
  (cond [(empty? lst) empty]
        [(cons? lst) (if (and (< (posn-x (first lst)) MAX)
                              (< (posn-y (first lst)) MAX))
                         (cons (first lst) (cerca (rest lst)))
                         (cerca (rest lst)))]))

;--- TESTING ---
(define L1p (list (make-posn 3 5) (make-posn 1 2) (make-posn 0 1) (make-posn 5 6)))
(define L2p (list (make-posn 1 2) (make-posn 0 1)))
(check-expect (cerca L1p) L2p)


;-----------------------
; EJERCICIO 16
;-----------------------

; positivos: List -> List
; Dada una lista, retorna la misma
; solo con los numros positivos
(define (positivos lst) (cond [(empty? lst) empty]
                               [(cons? lst) (if (> (first lst) 0)
                                                (cons (first lst) (positivos (rest lst)))
                                                (positivos (rest lst)))]))
;--- TESTING ---
(check-expect (positivos (list 1 2 3 4 5)) (list 1 2 3 4 5))
(check-expect (positivos (list -1 2 -3 -4 5)) (list 2 5))


;-----------------------
; EJERCICIO 17
;-----------------------

; eliminar: List Number -> List
; Dada una lista y un numero, reetorna
; la misma sin los elementos que sea iguales a
; ese numero.
(define (eliminar lst n)
  (cond [(empty? lst) empty]
        [(cons? lst) (if (not (equal? (first lst) n))
                         (cons (first lst) (eliminar (rest lst) n))
                         (eliminar (rest lst) n))]))

;---TESTING---
(check-expect (eliminar (list 1 5 6 1 8 1) 1) (list 5 6 8))
(check-expect (eliminar (list 1 2 3 2 7 6) 2) (list 1 3 7 6))
(check-expect (eliminar (list 1 2 3 2 7 6) 0) (list 1 2 3 2 7 6))



;-----------------------
; EJERCICIO 18
;-----------------------

; mayores0 List -> Bool
; Dada una lista, retorna la misma
; ees una lista de numeros positivos
(define (mayores0 lst)
  (cond [(empty? lst) #t]
        [(cons? lst) (and (> (first lst) 0) (mayores0 (rest lst)))]))

;--- TESTING ---
(check-expect (mayores0 (list 9 16 4)) #t)
(check-expect (mayores0 (list 9 -16 4)) #f)



; raices: List -> List
; Dada una lista, retorna la raiz cuadrada
; de todos sus elemntos
(define (raices lst) (cond [(empty? lst) empty]
                           [(cons? lst) (if (mayores0 lst)
                                            (cons (sqrt (first lst)) (raices (rest lst)))
                                            "Error, en la lista hay numeros negativos")]))
; --- TESTING ---
(check-expect (raices (list 9 16 4)) (list 3 4 2))
(check-expect (raices (list 16 16 16 25 25)) (list 4 4 4 5 5))
(check-expect (raices (list 16 -25 25)) "Error, en la lista hay numeros negativos")



;-----------------------
; EJERCICIO 19
;-----------------------

; dist-ori: Posn -> Number
; Dado un punto en el plano, retorna la
; distancia al origen deel mismo
(define (dist-ori posn) (sqrt (+ (sqr (posn-x posn)) (sqr (posn-y posn)))))

;--- TESTING ---
(check-expect (dist-ori (make-posn 3 4)) 5)
(check-expect (dist-ori (make-posn 0 4)) 4)
(check-expect (dist-ori (make-posn 12 5)) 13)





; puntos?: List -> Bool
; Dada una lista, me retorna #t
; si todos sus elemntos son puntos en
; el plano (posn)
(define (puntos? lst) (cond [(empty? lst) #t]
                            [(cons? lst) (and (posn? (first lst)) (puntos? (rest lst)))]))

;--- TEESTING ---
(check-expect (puntos? (list (make-posn 1 1) (make-posn 2 3) (make-posn 3 3))) #t)
(check-expect (puntos? (list (make-posn 1 1) 20 (make-posn 3 3))) #f)
(check-expect (puntos? (list #t #t #t)) #f)



; distancias: List -> List
; Dada una lista de puntos en el plano
; retorna la misma con la dist-ori de 
; de cada elemento
(define (distancias lst) (cond [(empty? lst) empty]
                               [(cons? lst) (if (puntos? lst)
                                                (cons (dist-ori (first lst)) (distancias (rest lst)))
                                                "Error, no es una lista de posn")]))
;--- TESTING ---
(check-expect (distancias (list (make-posn 3 4) (make-posn 0 4) (make-posn 12 5))) (list 5 4 13))
(check-expect (distancias (list (make-posn 3 4) #f (make-posn 12 5))) "Error, no es una lista de posn")


;-----------------------
; EJERCICIO 20
;-----------------------

;lst-image?: List -> Bool
; Dada una lista, devueelve #true si
; todos los elmentos de la misma son imagenes
(define (lst-image? lst) (cond [(empty? lst) #t]
                               [(cons? lst) (and (image? (first lst)) (lst-image? (rest lst)))]))
;--- TESTING ---
(define IMG1 (circle 20 "solid" "red"))
(define IMG2 (rectangle 10 20 "solid" "red"))
(define IMG3 (star 10 "solid" "red"))

(check-expect (lst-image? (list IMG1 IMG2 IMG3)) #t)
(check-expect (lst-image? (list IMG1 20 #t IMG3)) #f)
(check-expect (lst-image? (list 20 0 0)) #f)


; ancho: List -> List
; Dada una lista de imagenes, retorna la misma
; con el ancho de cada una de las imgs
(define (ancho lst) (cond [(empty? lst) empty]
                          [(cons? lst) (if (lst-image? lst)
                                           (cons (image-width (first lst)) (ancho (rest lst)))
                                           "Error, no es una lista dee imagenes")]))

;--- TESTING ---
(check-expect (ancho (list (circle 30 "solid" "red") (rectangle 10 30 "outline" "blue"))) (list 60 10))
(check-expect (ancho (list (circle 30 "solid" "red") 20)) "Error, no es una lista dee imagenes")



;-----------------------
; EJERCICIO 21
;-----------------------

(define (sgn1 x) (if (< x 0) -1 (if (= x 0) 0 1)))

; signos: List -> List
; Dada una lista, retorna la misma
; aplicando a todos su elementos la
; funcion sgn1
(define (signos lst) (cond [(empty? lst) empty]
                           [(cons? lst) (cons (sgn1 (first lst)) (signos (rest lst)))]))

; --- TESTING ---
(check-expect (signos (signos (list 45 32 -23 0 12))) (list 1 1 -1 0 1))



;-----------------------
; EJERCICIO 22
;-----------------------

; cuadrados: List -> List
; Dada una lista, retorna la misma
; con todos sus elemntos elevado al cuadrado
(define (cuadrados lst) (cond [(empty? lst) empty]
                              [(cons? lst) (cons (sqr (first lst)) (cuadrados (rest lst)))]))
;--- TESTING ---
(check-expect (cuadrados (list 1 2 3)) (list 1 4 9))
(check-expect (cuadrados (list 5 5 5)) (list 25 25 25))




;-----------------------
; EJERCICIO 23
;-----------------------

; lst-string?: List -> bool
; Dada una lista, retorna #t si todos
; sus eleementos son strings
(define (lst-str? lst) (cond [(empty? lst) #t]
                             [(cons? lst) (and (string? (first lst)) (lst-str? (rest lst)))]))
;--- TESTING ---
(check-expect (lst-str? (list "hola" "como" "estas")) #t)
(check-expect (lst-str? (list "hola" "como" 2)) #f)



; longitudes: List(str) -> List(num)
; Dada una lista de strings, retorna
; la misma con las longitudes de los strings
(define (longitudes lst) (cond [(empty? lst) empty]
                               [(cons? lst) (if (lst-str? lst)
                                                (cons (string-length (first lst)) (longitudes (rest lst)))
                                                "Error, no es una lista de strings")]))
;--- TESTING ---
(check-expect (longitudes (list "hola" "como" "estas")) (list 4 4 5))
(check-expect (longitudes (list "hola" "como" "estas" 20)) "Error, no es una lista de strings")



;-----------------------
; EJERCICIO 24
;-----------------------

; cel-Far: Number -> Number
; Dado un numero en far, devulve su equivalnte a celci
(define (cel-far f) (* (- f 32) (/ 5 9)))


; convertirFC: List -> List
; Dada una lista-de-numeros de grados far, retorna la misma con
; todos sus elementos convertidos a celcius
(define (convertirFC lst) (cond [(empty? lst) empty]
                                [(cons? lst) (cons (cel-far (first lst)) (convertirFC (rest lst)))]))
;--- TESTING ---
(check-expect (convertirFC (list 32 68 140)) (list 0 20 60))



;-----------------------
; EJERCICIO 25
;-----------------------

; prod: List -> Number
; Dada una lista-de-numeros, retorna el
; producto de todos sus elementos
(define (prod lst) (cond [(empty? lst) 1]
                         [(cons? lst) (* (first lst) (prod (rest lst)))]))
;--- TESTING ---
(check-expect (prod (list 1 2 3 4 5)) 120)
(check-expect (prod (list 8 8)) 64)


;-----------------------
; EJERCICIO 26
;-----------------------

; pegar: List -> String
; Dada una lista-de-string, retorna la
; concatenacion de todos ellos
(define (pegar lst) (cond [(empty? lst) ""]
                          [(cons? lst) (if (lst-str? lst)
                                           (string-append (first lst) (pegar (rest lst)))
                                           "Error, no es una lista de strings")]))
;--- TESTING ---
(check-expect (pegar (list "hola" "como" "estas")) "holacomoestas")
(check-expect (pegar (list "hola" "777")) "hola777")
(check-expect (pegar (list "hola" "777" 20 20)) "Error, no es una lista de strings")


;-----------------------
; EJERCICIO 27
;-----------------------

; maximo: List -> Number
; Dada una lista-de-numeeros, retorna
; el maximo
(define (maximo lst) (cond [(empty? lst) 0]
                           [(cons? lst) (max (first lst) (maximo (rest lst)))]))
;--- TSTING ---
(check-expect (maximo (list 23 543 325 0 75)) 543)
(check-expect (maximo (list 1 2 3 4)) 4)



;-----------------------
; EJERCICIO 28
;-----------------------

; sumdist: List -> Number
; Dada una lista-de-posn, retorna la
; suma de sus distancias al origen
(define (sumdist lst) (cond [(empty? lst) 0]
                            [(cons? lst) (+ (dist-ori (first lst)) (sumdist (rest lst)))]))
;--- TESTING ---
(check-expect (sumdist (list (make-posn 3 4) (make-posn 0 4) (make-posn 12 5))) 22)


;-----------------------
; EJERCICIO 29
;-----------------------

; sumacuad: List -> Number
; Dada una lista-de-numeros, retorna
; la suma de todos los elemeentos
(define (sumacuad lst) (cond [(empty? lst) 0]
                             [(cons? lst) (+ (sqr (first lst)) (sumacuad (rest lst)))]))
;--- TESTING ---
(check-expect (sumacuad (list 1 2 3)) 14)


;-----------------------
; EJERCICIO 30
;-----------------------
#|
(define ANCHO 400)
(define ALTO 400)

(define FONDO (empty-scene ANCHO ALTO "black"))

(define RADSTR 30)
(define ESTRELLA (star RADSTR "solid" "white"))


;ESTADO
(define INICIAL FONDO)

; Un estado es una List(posn)
; que representa las coordenadas donde hay estrellas,
; ordenadas de la más reciente a la más antigua.
(define-struct Estado [lst])


(define ESTADO2 (make-Estado empty))



;PANTALLA - interpretar
;pantalla: List(posn) -> Image
(define (pantalla e)
  (cond [(empty? (Estado-lst e)) FONDO]
        [(posn? (first (Estado-lst e)))
         (place-image ESTRELLA (posn-x (first (Estado-lst e))) (posn-y (first (Estado-lst e)))
                      (pantalla (make-Estado (rest (Estado-lst e)))))]
        [else e]
                           ))




;MOUSE
(define (check-borde x y) (and (< x (- ANCHO RADSTR));lim derecha
                               (> x  RADSTR) ;lim isqu
                               (> y RADSTR)
                               (< y (- ANCHO RADSTR))))

;(define (mouse e x y event) (cond [(and (check-borde x y) (equal? event "button-down"))
;                                   (place-image ESTRELLA x y e)]
;                                  [else e]))

(define (mouse e x y event)
  (cond [(equal? event "button-down") (make-Estado (reverse (cons (make-posn x y) (Estado-lst e))))]
        [else e]))


;TECLADO
(define (teclado e k) (cond [(equal? k " ") ESTADO2]
                            [(and (cons? (Estado-lst e)) (equal? k "\b"))
                             (make-Estado (rest (Estado-lst e)))]
                            [else e]))


(big-bang ESTADO2
  [to-draw pantalla]
  [on-mouse mouse]
  [on-key teclado]
  )
|#



;-----------------------
; EJERCICIO 31
;-----------------------











































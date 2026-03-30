;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |practica5 parte2|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

; PRATICA 5 PARTE 2


;-------------------------
; EJERCICIO 1
;-------------------------

; filter : (X -> Boolean) List(X) -> List(X)

;Dado un predicado p y una lista l con objetos en X, queremos devolver una
;lista con aquellos objetos de l para los cuales p evalúa a #true.


(define (filter-x pred lst) (cond [(empty? lst) empty]
                                  [else (if (pred (first lst))
                                                   (cons (first lst) (filter-x pred (rest lst)))
                                                   (filter-x pred (rest lst)))]))

;---testing---
(check-expect (filter-x even? (list 1 2 3 4 5)) (list 2 4))
(check-expect (filter string? (list 3 "Lista" #true "heterogénea")) (list "Lista" "heterogénea"))


;ejercicio 12:
;Diseñe la función pares, que dada una lista de números l, devuelve una lista con los números pares de l.
(check-expect (filter-x even? (list 4 6 3 7 5 0)) (list 4 6 0))

;ejercicio 13:
;Diseñe una función cortas que tome una lista de strings y
;devuelva una lista con aquellas palabras de longitud menor a 5.

;menor-5: Str -> Bool
; determina si un string es menor a 5.
(define (menor-5? n) (< (string-length n) 5))


;filter-men5: List -> List
; Dada una lista, elimina los elementos cuya
; longitud sean menor que 5
(define (filter-men5 lst) (filter menor-5? lst))
;---testing---
(check-expect (filter-men5 (list "hola" "mundo")) (list "hola"))
(check-expect (filter-men5 (list "Lista" "de" "palabras" "sin" "sentido")) (list "de" "sin"))





;Ejercicio 14. Diseñe la función mayores, que dada una lista de números l y un número n,
;devuelve una lista con aquellos elementos de l que son mayores a n.
;(check-expect (filter-x (> 5 lst) (list 1 2 7 7 7)) (list 7 7 7))


;Ejercicio 15. Diseñe una función cerca que tome una lista de puntos del plano
;(representados mediante estructuras posn), y devuelva la lista de aquellos puntos que están a distancia
;menor a MAX de origen, donde MAX es una constante de su programa.


;Ejercicio 16. Diseñe una función llamada positivos que tome una lista de números
;y se quede sólo con aquellos que son mayores a 0.


;Ejercicio 17. Diseñe la función eliminar, que dada una lista de números l y un numero n,
;devuelve la lista que resulta de eliminar en l todas las ocurrencias de n.



;-------------------------
; EJERCICIO 2
;-------------------------
;Diseñe una función pares que tome una lista de números l y devuelva una lista con los números pares de l.

;pares: List -> List
; Dada una lista, retorna la misma solo
; con sus elementos pares
; (pares (list 1 2 3 4 5)) == (list 2 4)
; (pares (list 6 7 6 2 2)) == (list 6 6 2 2)
(define (pares lst) (cond [(empty? lst) empty]
                          [(cons? lst) (if (even? (first lst))
                                           (cons (first lst) (pares (rest lst)))
                                           (pares (rest lst)))]))

;--- TESTING ---
(check-expect (pares (list 1 2 3 4 5)) (list 2 4))
(check-expect (pares (list 6 7 6 2 2)) (list 6 6 2 2))



;-------------------------
; EJERCICIO 3
;-------------------------
;Diseñe una función cortas que tome una lista de strings
;y devuelva una lista con aquellas palabras de longitud menor a 5.

;cortas: List -> List
; Dada una lista-de-strings retorna la misma
; con aquellos elementos que son menores que 5
; (cortas (list "el" "oficio" "del" "cantor")) == (list "el" "del")
; (cortas (list "que" "bien" "te" "veo" "hoy" "amigo")) == (list "que" "bien" "te" "veo" "hoy")
(define (cortas lst) (cond [(empty? lst) empty]
                            [(cons? lst) (if (< (string-length (first lst)) 5)
                                             (cons (first lst) (cortas (rest lst)))
                                             (cortas (rest lst)))]))

;--- TESTING ---
(check-expect (cortas (list "Lista" "de" "palabras" "sin" "sentido")) (list "de" "sin"))
(check-expect (cortas (list "el" "oficio" "del" "cantor")) (list "el" "del"))
(check-expect (cortas (list "que" "bien" "te" "veo" "hoy" "amigo")) (list "que" "bien" "te" "veo" "hoy"))




;-------------------------
; EJERCICIO 4
;-------------------------
;Diseñe una función cerca que tome una lista de puntos del plano
;(representados mediante estructuras posn), y devuelva la lista de aquellos puntos
;que están a distancia menor a MAX, donde MAX es una constante de su programa.

;cerca: List -> List
; Dada una lista-de-posn, retorna la misma
; con aquellos posn que esten a distancia menor a MAX
(define MAX 5)

(define (cerca lst)
  (cond [(empty? lst) empty]
        [(cons? lst) (if (and (< (posn-x (first lst)) MAX) (< (posn-y (first lst)) MAX))
                         (cons (first lst) (cerca (rest lst)))
                         (cerca (rest lst)))]))
;--- TESTING ---
(check-expect (cerca (list (make-posn 3 5) (make-posn 1 2) (make-posn 0 1) (make-posn 5 6)))
              (list (make-posn 1 2) (make-posn 0 1)))



;-------------------------
; EJERCICIO 5
;-------------------------
;Diseñe una función positivos que tome una lista de números y se quede sólo con aquellos que son mayores a 0.


;positivos: List -> List
;Dada una lista-de-numeros, retorna la misma
;Con los elementos que son mayores a cero.
; (positivos (list -1 -21 7 7 -11 7)) == (list 7 7 7)
; (positivos (list 1 2 -3 4)) == (list -3)
(define (positivos lst) (cond [(empty? lst) empty]
                              [(cons? lst) (if (> (first lst) 0)
                                               (cons (first lst) (positivos (rest lst)))
                                               (positivos (rest lst)))]))
;--- TESTING ---
(check-expect (positivos (list -1 -21 7 7 -11 7)) (list 7 7 7))
(check-expect (positivos (list 1 2 -3 4)) (list 1 2 4))



;-------------------------
; EJERCICIO 6
;-------------------------

;Diseñe la función raices, que dada una lista de números, devuelve
;una lista con las raíces cuadradas de sus elementos.

; raices: List -> List
; Dada una lista-de-numeros, retorna
; la misma con las raices cuadradas de sus elementos
; (raices (list 1 4 9 16 25)) == (list 1 2 3 4 5)
; (raices (list 25 25 25)) == (list 5 5 5)
(define (raices lst) (cond [(empty? lst) empty]
                           [(cons? lst) (cons (sqrt (first lst)) (raices (rest lst)))]))
;--- TESTING ---
(check-expect (raices (list 1 4 9 16 25)) (list 1 2 3 4 5))
(check-expect (raices (list 9 16 4)) (list 3 4 2))



;-------------------------
; EJERCICIO 7
;-------------------------
;Diseñe una función distancias que tome una lista de puntos del plano
;y devuelva una lista con la distancia al origen de cada uno.


; dist-ori: Posn -> Number
; Dado un punto en el plano, retorna la
; distancia al origen deel mismo
(define (dist-ori posn) (sqrt (+ (sqr (posn-x posn)) (sqr (posn-y posn)))))


;distancias: List -> List
; Dada una lista-de-posn, retorna
; la misma con la distancia al origen de cada elemento.
(define (distancias lst) (cond [(empty? lst) empty]
                               [(cons? lst) (cons (dist-ori (first lst)) (distancias (rest lst)))]))
;--- TESTING ---
(check-expect (distancias (list (make-posn 3 4) (make-posn 0 4) (make-posn 12 5))) (list 5 4 13))



;-------------------------
; EJERCICIO 8
;-------------------------
;Diseñe una función anchos que tome una lista de imágenes y devuelva una lista con el ancho de cada una.

; ancho: List -> List
; Dada una lista-de-imagenes, retorna
; la misma lista con el ancho de cada imagen
(define (ancho lst) (cond [(empty? lst) empty]
                          [(cons? lst) (cons (image-width (first lst)) (ancho (rest lst)))]))
;--- TESTING ---
(check-expect (ancho (list (circle 30 "solid" "red") (rectangle 10 30 "outline" "blue"))) (list 60 10))


;-------------------------
; EJERCICIO 9
;-------------------------
;Diseñe la función signos, que dada una lista de números, devuelve una lista con el
;resultado de aplicarle a cada elemento la función sgn2 definida en la práctica 1.


(define (sgn1 x) (if (< x 0) -1 (if (= x 0) 0 1)))

; signos: List -> List
; Dada una lista-de-numeros, retorna
; la misma con el resultado de aplicarle la funcion
; sign1 a cada elemento
(define (signo lst) (cond [(empty? lst) empty]
                          [(cons? lst) (cons (sgn1 (first lst)) (signo (rest lst)))]))
;--- TESTING ---
(check-expect (signo (list 45 32 -23 0 12)) (list 1 1 -1 0 1))



;-------------------------
; EJERCICIO 10
;-------------------------
;Diseñe una función cuadrados que tome una lista de números y devuelva otra lista donde los
;elementos que aparezcan sean el cuadrado de los elementos de la lista original.

; cuadrados: List -> List
; Dada una lista-de-numeros, retorna la
; misma con el resultado de elevar al cuadrado
; sus elementos
(define (cuadrados lst) (cond [(empty? lst) empty]
                              [(cons? lst) (cons (sqr (first lst)) (cuadrados (rest lst)))]))
;--- TESTING ---
(check-expect (cuadrados (list 1 2 3 4)) (list 1 4 9 16))



;-------------------------
; EJERCICIO 11
;-------------------------
;Diseñe una función longitudes que tome una lista de cadenas y devuelva
;una lista de números que corresponda con la longitud de cada cadena de la lista original.

; longitudes: List -> List
; Dada una lista-de-strings-, reetorna la misma
; con el resultado de calcular la longitud a cada elemento
; dee la lista
(define (long lst) (cond [(empty? lst) empty]
                         [(cons? lst) (cons (string-length (first lst)) (long (rest lst)))]))
;--- TESTING ---
(check-expect (long (list "hola" "cómo" "estás?")) (list 4 4 6))



;-------------------------
; EJERCICIO 12
;-------------------------
;Diseñe la función convertirFC, que convierte una lista de temperaturas
;medidas en Fahrenheit a una lista de temperaturas medidas en Celsius.

; cel-Far: Number -> Number
; Dado un numero en far, devulve su equivalnte a celci
(define (cel-far f) (* (- f 32) (/ 5 9)))


; convertirFC: List -> List
; Dada una lista-de-numeros(Far), reetorna la misma
; con los elementos considerados en Far, convertidos a Cel.
(define (convertirFC lst) (cond [(empty? lst) empty]
                                [(cons? lst) (cons (cel-far (first lst)) (convertirFC (rest lst)))]))
;--- TESTING ---
(check-expect (convertirFC (list 32 68 122)) (list 0 20 50))


;-------------------------
; EJERCICIO 13
;-------------------------
;Diseñe una función prod que multiplica los elementos de una lista de números. Para la lista vacía, devuelve 1

; prod: List -> Number
; Dada una lista-de-numeros, retorna
; el resultado de multiplicar todos sus elementos
(define (prod lst) (cond [(empty? lst) 1]
                         [(cons? lst) (* 1 (first lst) (prod (rest lst)))]))
;--- TESTING ---
(check-expect (prod (list 1 2 3 4 5)) 120)



;-------------------------
; EJERCICIO 14
;-------------------------
;Diseñe una función pegar que dada una lista de strings, devuelve
;el string que se obtiene de concatenar todos los elementos de la lista.


; pegar: List -> String
; Dada una lista-de-strings, retorna el resultado
; de concatener todos los elementos de dicha lista
(define (pegar lst) (cond [(empty? lst) ""]
                          [(cons? lst) (string-append (first lst) (pegar (rest lst)))]))
;--- TESTING ---
(check-expect (pegar (list "pro" "gra" "mar")) "programar")
(check-expect (pegar (list "bamo" "niu" "bel")) "bamoniubel")


;-------------------------
; EJERCICIO 15
;-------------------------
;Diseñe una función max que devuelve en máximo de una lista de naturales. Para la lista vacía, devuelve 0.

;maxzj: Number Number -> Number
; Dado dos numeros, determina el maximo
(define (maxzj a b) (if (> a b)
                        a
                        b))
(check-expect (maxzj 1 5) 5)
(check-expect (maxzj 1 -5) 1)


; max: List -> Number
; Dada una lista-de-numeros, retorna el numero maximo
(define (maxz lst) (cond [(empty? lst) 0]
                         [(cons? lst) (maxzj (first lst) (maxz (rest lst)))]))
;--- TESTING ---
(check-expect (maxz (list 23 543 325 0 75)) 543)
(check-expect (maxz (list 1 2 3 -4 -5)) 3)


;-------------------------
; EJERCICIO 16
;-------------------------

; all-verd: List -> Bool
; Dada una lista, reetorna #true si todos sus
; elementos son verdaderos. Caso contrario retorna #f
(define (all-verd lst) (cond [(empty? lst) #t]
                             [(cons? lst) (and (first lst) (all-verd (rest lst)))]))
;--- TEESTING ---
(check-expect (all-verd (list #t #t #t)) #t)
(check-expect (all-verd (list #t #t #t #f)) #f)



;+++++++++++++++++++++++++++++++++++++++++++++++++
;foldz:
(define (foldz f c lst) (cond [(empty? lst) c]
                              [else (f (first lst) (foldz f c (rest lst)))]))



; and2: bool -> bool
; dado una cantidad n de booleanos, retorna #t si todos son #t.
(define (and2 a b) (if (equal? a b)
                       #t
                       #f))

(check-expect (and2 #t #t) #t)
(check-expect (and2 #t #f) #f)



;--- TEESTING ---
(check-expect (foldz * 1 (list 1 2 3 4 5)) 120)
(check-expect (foldz string-append "" (list "pro" "gra" "ma")) "programa")
(check-expect (foldz and2 #t (list #t #t #t #t)) #t)



;-------------------------
; EJERCICIO 17
;-------------------------

; largo: List -> Number
; Dada una lista, retorna el largo de la misma
(define (largo lst) (cond [(empty? lst) 0]
                          [(cons? lst) (+ 1 (largo (rest lst)))]))
;--- TESTING ---
(check-expect (largo (list 1 "hola" #t -5)) 4)




;-------------------------
; EJERCICIO 18
;-------------------------

;mayores: List(Number) Number -> List(Number)
; Dada una lista-de-numeros y un numero m, retorna
; la misma con los elementos que sean mayores a m
(define (mayores lst m) (cond [(empty? lst) empty]
                              [(> (first lst) m) (cons (first lst) (mayores (rest lst) m))]
                              [else (mayores (rest lst) m)]))

;--- TESTING ---
(check-expect (mayores (list 1 2 3 4 5) 2) (list 3 4 5))
(check-expect (mayores (list 5 7 7 7 5) 5) (list 7 7 7))



;-------------------------
; EJERCICIO 19
;-------------------------

; largas: List(str) Number -> List(str)
; Dada una lista-de-strings y un numero n, retorna
; la misma lista con aquellos strings que tengan
; longitud mayor a n.
(define (largas lst n) (cond [(empty? lst) empty]
                             [(> (string-length (first lst)) n) (cons (first lst) (largas (rest lst) n))]
                             [else (largas (rest lst) n)]))
;--- TESTING ---
(check-expect (largas (list "Hola" "estudiantes" "de" "LCC" "Rosario") 4)
    (list "estudiantes" "Rosario"))


;-------------------------
; EJERCICIO 20
;-------------------------

; lejos: List(posn) Number -> List(posn)
;  Dada una lista-de-posn y un numero m, retorna
; la misma que esten a distancia mayor a m del origen

(define (lejos lst m) (cond [(empty? lst) empty]
                            [(or (> (posn-x (first lst)) m)
                                 (> (posn-y (first lst)) m)) (cons (first lst) (lejos (rest lst) m))]
                            [else (lejos (rest lst) m)]))
;--- TESTING ---
(check-expect (lejos (list (make-posn 3 5) (make-posn 1 2) (make-posn 0 1) (make-posn 5 6)) 4)
 (list (make-posn 3 5) (make-posn 5 6)))



;-------------------------
; EJERCICIO 21
;-------------------------

; sumar: List(number) Number -> List(number)
; Dada una lista-de-numeros y un numero m, retorna
; la misma con el resultado de sumarle el numero m a cada elemento
(define (sumar lst m) (cond [(empty? lst) empty]
                            [else (cons (+ (first lst) m) (sumar (rest lst) m))]))
;--- TESTING ---
(check-expect (sumar (list 5 3 -4) 10) (list 15 13 6))
(check-expect (sumar (list 5 3 -4) 1) (list 6 4 -3))

;-------------------------
; EJERCICIO 22
;-------------------------

; elevar: List(Number) Number -> List(Number)
; Dada una Lista y un numero m, retorna la misma
; lista con el resultado de elevar los elementos a la m.
(define (elevar lst m) (cond [(empty? lst) empty]
                             [else (cons (expt (first lst) m) (elevar (rest lst) m))]))
;--- TESTING ---
(check-expect (elevar (list 3 0 2 1) 3) (list 27 0 8 1))
(check-expect (elevar (list 3 0 2 1) 2) (list 9 0 4 1))


;-------------------------
; EJERCICIO 23
;-------------------------

; cuadrados: List(number) -> List(Number)
; Dada una lista-de-numeros, retorna la misma
; con el resultado de elevar al cuadrado sus elementos
(define (cuadradosz lst) (map sqr lst))

(check-expect (cuadradosz (list 1 2 3 4)) (list 1 4 9 16))


; suma: List(number) -> Number
; Dada una lista-de-numeros, retorna la suma
; de todos sus elementos
(define (suma lst) (foldr + 0 lst))

(check-expect (suma (list 1 2 3 4 5)) 15)


; sumacuad: List(Number) -> Number
; Dada una lista-de-numeros, retorna el resultado
; de la suma de elevar al cuadrado sus elementos 
(check-expect (sumacuad (list 1 2 3 4 5)) 55)
(check-expect (sumacuad empty) 0)
(check-expect (sumacuad (list 11 13 9)) 371)

(define (sumacuad lst) (suma (cuadradosz lst)))


;-------------------------
; EJERCICIO 24
;-------------------------

; dist-ori: Posn -> Number
; Dado un punto en el plano, retorna la
; distancia al origen deel mismo
;(define (dist-ori posn) (sqrt (+ (sqr (posn-x posn)) (sqr (posn-y posn)))))


; calc-dist-lst: List(posn) -> List(Number)
; Dada una lista-de-posn, retorna la misma
; con el resultado de calcular la distancia al origen
; a cada elemento
(check-expect (calc-dist-lst (list (make-posn 3 4) (make-posn 0 4) (make-posn 12 5))) (list 5 4 13))

(define (calc-dist-lst lst) (map dist-ori lst))



; suma-n: List(Number) -> Number
; Dada una lista-de-numeros, retorna la suma de todos ellos
(check-expect (suma-n (list 10 10 10)) 30)

(define (suma-n lst) (foldr + 0 lst))


;sumadist: List(posn) -> Number
; Dada una lista-de-posn, retorna la suma de
; sus distancias al origen
(check-expect (sumadist (list (make-posn 3 4) (make-posn 0 3))) 8)

(define (sumadist lst) (suma-n (calc-dist-lst lst)))


;-------------------------
; EJERCICIO 25
;-------------------------

; multpos: List(number) -> Number
; Dada una lista-de-numeros, retorna el producto
; de los numeros positivos de la misma
(define (multpos lst) (foldr * 1 (filter positive? lst)))

(check-expect (multpos (list 3 -2 4 0 1 -5)) 12)



;-------------------------
; EJERCICIO 26
;-------------------------

; sumaAbs: List(number) -> Number
; Dada una lista-de-numeros, retorna la suma
; de sus valores absolutos
(define (sumaAbs lst) (foldr + 0 (map abs lst)))

(check-expect (sumaAbs (list 3 -2 4 0 1 -5)) 15)



;-------------------------
; EJERCICIO 27
;-------------------------

(define (positive-0 n) (>= n 0))

; raices: List(number) -> List(number)
; Dada una lista-de-numeros, reetorna la misma
; con el resultado de calcular la raiz cuadrada a los
; numeros positivos de dicha lista
(define (raicesz lst) (map sqrt (filter positive-0 lst)))

(check-expect (raicesz (list 16 -4 9 0)) (list 4 3 0))



;-------------------------
; EJERCICIO 28
;-------------------------

; ancha?: Image -> Bool
; Dada una imagen, devuelve #t si es ancha (largo > alto)
; de lo contrario devuelve #f (largo < alto)
(define (ancha? img) (if (> (image-width img) (image-height img))
                         #t
                         #f))

; calc-area: Img -> Number
; Dada una figura, calcula su area
(define (calc-area img) (* (image-width img) (image-height img)))


; saa: List(image) -> Number
; Dada una lista-de-imagenes, retorna la suma
; de las areas de aquellas imagenes que sean "anchas"
(define (saa lst) (foldr + 0 (map calc-area (filter ancha? lst))))

;--- TESTING ---
(check-expect (saa (list (circle 20 "solid" "red")
              (rectangle 40 20 "solid" "blue")
              (rectangle 10 20 "solid" "yellow")
              (rectangle 30 20 "solid" "green"))) 1400)



;-------------------------
; EJERCICIO 29
;-------------------------

;sumalst: List(lista-de-num) -> List(number)
; Dada una lista-de-listas(number) retorna la misma
; con el resultado de sumar los numeros que estan contenidos en
; cada elemento de la lista principal.

(define (sumalst lst) (cond [(empty? lst) empty]
                            [else (cons (foldr + 0 (first lst)) (sumalst (rest lst)))]))
;---testing---
(check-expect (sumalst (list (list 1 2 3 4 5) (list 1 2 3 4 5 6) (list -87 -73 -78 -83 -33)))
              (list 15 21 -354))


; algun-pos: List(Number) -> Bool
; Dada una lista-de-lista(numeros) , retorna #t
; si la suma de alguna lista es un numero positivo.
(define (algun-pos lst) (if (cons? (filter positive? (sumalst lst)))
                            #t
                            #f))

;--- TEESTING ---
(check-expect (algun-pos (list (list 1 3 -4 -2) (list 1 2 3 -5) (list 4 -9 -7 8 -3))) #t)
(check-expect (algun-pos (list empty (list 1 2 3))) #t)
(check-expect (algun-pos (list (list -1 2 -3 4 -5) empty (list -3 -4))) #f)


;-------------------------
; EJERCICIO 30
;-------------------------

; long-lst: List -> Number
; Dada una lista, retorna la longitud de la misma
(define (len-list lst) (cond [(empty? lst) 0]
                              [else (+ 1 (len-list (rest lst)))]))
;--- TESTING ---
(check-expect (len-list (list 1 2 3 4)) 4)
(check-expect (len-list (list 1 1 1 1 1 1 1)) 7)
(check-expect (len-list (list )) 0)



;long-list: List(listOfnumber) -> Bool
; Dada una lista-de-listas(number) retorna #true
; si las longitudes de todas las sublistas son mayores a 4

(define (long-list lst) (cond [(empty? lst) #t]
                              [else (and (> (len-list (first lst)) 4) (long-list (rest lst)))]
                              ))
;--- TEESTING ---
(check-expect (long-list (list (list 1 2 3 4 5) (list 1 2 3 4 5 6) (list 87 73 78 83 33))) #t)
(check-expect (long-list (list '() '() (list 1 2 3))) #f)
(check-expect (long-list (list (list 1 2 3 4 5) empty)) #f)


;-------------------------
; EJERCICIO 31
;-------------------------

; all-true: List -> Bool
; Dada una lista done hayan valores booleanos
; retorna #t si todos los valores booleanos
; son verdaderos
(define (all-true lst) (cond [(empty? lst) #t]
                             [(boolean? (first lst)) (and (first lst) (all-true (rest lst)))]
                             [else (all-true (rest lst))]))
;--- TEESTING ---
(check-expect (all-true (list 5 #true "abc" #true "def")) #t)
(check-expect (all-true (list 1 #true (circle 10 "solid" "red") -12 #false)) #f)


;-------------------------
; EJERCICIO 32
;-------------------------


(define-struct Alumno [nombre nota faltas])
; alumno  (String, Number, Natural). Interpretación
; - nombre representa el nombre del alumno.
; - nota representa la calificación obtenida por el alumno (entre 0 y 10).
; - faltas: número de clases a las el alumno no asistió.

(define ALUM1 (make-Alumno "Ada Lovelace" 10 20))
(define ALUM2 (make-Alumno "Carlos Software" 3.5 12))
(define ALUM3 (make-Alumno "Lgante cumbia420" 6 12))
(define ALUM4 (make-Alumno "Juan Computación" 5 13))

; destacados: List(Alumno) -> String
; Dada una lista-de-Alumnos retorna el nombre
; de aquellos que tienen nota mayor o igual a 9
(define (destacados lst)
  (cond [(empty? lst) empty]
        [(>= (Alumno-nota (first lst)) 9) (cons (Alumno-nombre (first lst)) (destacados (rest lst)))]
        [else (destacados (rest lst))]))
;--- TEESTING ---
(check-expect (destacados (list ALUM1 ALUM2)) (list "Ada Lovelace"))




;condicion: Alumno -> String
; Dado un alumno, determina su condicion.
(define (condicion alum) (cond [(>= (Alumno-nota alum) 8) "promovido"]
                               [(< (Alumno-nota alum) 6) "libre"]
                               [else "regular"]))
;--- TESTING ---
(check-expect (condicion ALUM1) "promovido")
(check-expect (condicion ALUM2) "libre")
(check-expect (condicion ALUM3) "regular")



; exito: List(Alumno) -> Bool
; dada una lista de alumnos, devuelve #true si ninguno está libre
(define (exito lst)
  (cond [(empty? lst) #t]
        [else (and (not (equal? (condicion (first lst)) "libre"))
                   (exito (rest lst)))]))
;--- TESTING ---
(check-expect (exito (list ALUM4 ALUM2 ALUM1)) #f)
(check-expect (exito (list ALUM3 ALUM1)) #t)



; faltas-regulares: List(Alumno) -> Number
; Dada una lista dee alumnos, retorna la suma
; de las ausencias de los alumnos regulares
(define (faltas-regulares lst)
  (cond [(empty? lst) 0]
        [(equal? (condicion (first lst)) "regular") (+ (Alumno-faltas (first lst)) (faltas-regulares (rest lst)))]
                                                    [else (faltas-regulares (rest lst))]))
;--- TESTING ---
(check-expect (faltas-regulares (list (make-Alumno "Juan Computación" 7 2)
                                      (make-Alumno "Carlos Software" 3.5 4)
                                      (make-Alumno "Ada Lovelace" 10 1))) 2)



; promovidos-ausentes: List(Alum) -> List(str)
; dada una lista de alumnos, devuelve una lista con el
; nombre de aquellos alumnos promovidos que no asistieron a tres o más clases
(define (promovidos-ausentes lst)
  (cond
    [(empty? lst) empty]
    [(and (equal? (condicion (first lst)) "promovido")
          (>= (Alumno-faltas (first lst)) 3)) (cons (Alumno-nombre (first lst)) (promovidos-ausentes (rest lst)))]
    [else (promovidos-ausentes (rest lst))]))

;--- TESTING ---
(check-expect (promovidos-ausentes (list (make-Alumno "Juan Computación" 9 3)
                                         (make-Alumno "Carlos Software" 3.5 2)
                                         (make-Alumno "Ada Lovelace" 10 1)))
              (list "Juan Computación")
              )
































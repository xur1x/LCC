;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname final-practico-flotanteSEPT) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

;----------------------
; EJERCICIO 1
;----------------------
; sublistas-vacias?: ListOf List -> Bool
; Dada una lista-de-listas l, devuelve #t si
; todas las sublistas estan vacias.
(check-expect (sublistas-vacias? (list '() '() '())) #true)
(check-expect (sublistas-vacias? (list '() (list 5 7))) #false)
;---CODIGO---
(define (sublistas-vacias? l)
  (cond [(empty? l) #t]
        [else (and (empty? (first l)) (sublistas-vacias? (rest l)))]))

;----------------------
; EJERCICIO 2
;----------------------
;Diseñar una función intercalarN que dado un natural n y una lista l,
;distribuye el valor n en la lista de la siguiente manera: aumentando
;en 1 el valor de los elementos de la lista con posición par, hasta que n sea 0 o no haya más ;
;elementos de en la lista. Por ejemplo, si n es mayor o igual 2, incrementará en
;1 el primer y el tercer número de la lista.
;(check-expect (intercalarN 2 (list 1 1 1 1 1 1)) (list 2 1 2 1 1 1))
;(check-expect (intercalarN 2 (list 1 2 3 4)) (list 2 2 4 4))
;(check-expect (intercalarN 5 (list 1 2 3 4)) (list 2 2 4 4))

;...

;----------------------
; EJERCICIO 3
;----------------------

; DISEÑO DE DATOS: ESTADO
; Un Estado es un (make-Estado Image Number String) donde:
; escena: representa el lienzo donde dibujaremos los circulos
; tam: representa el tamaño del circulo
; color: representa el color del circulo
(define-struct Estado [escena tam color])

; DEFINICIÓN DE CONSTANTES
(define ANCHO 600) ; ancho de la escena
(define LARGO 600) ; largo de la escena
(define ESCENA (empty-scene LARGO ANCHO))
 
; Estado inicial
(define INICIAL (make-Estado ESCENA 5 "yellow"))
 
; punto : String Number -> Image
; dada una cadena que representa un color y un nro n,
; devuelve la imagen de un círculo del color dado de tamaño n píxeles.
(define (punto c t)
  (circle t "solid" c))
 
; ——— Función asociada a la cláusula to-draw de la expresión big-bang
; interpretar: Estado -> Image
(define (interpretar e) (Estado-escena e))
 
; ——— Función asociada a evento on-mouse
; manejador-on-mouse : Estado Number Number String -> Estado
(define (manejador-on-mouse e x y event)
  (cond [(equal? event "button-down")
         (make-Estado (place-image (punto (Estado-color e) (Estado-tam e))
                      x y (Estado-escena e))
                      (Estado-tam e)
                      (Estado-color e))]
        [else e]))
 
; ——— Función asociada a evento on-key
; manejador-on-key : Estado String -> Estado
; "y": cambia el color del proximo circuloa mostrar (amarillo)
; "r": cambia el color del proximo circuloa mostrar (rojo)
; "v": cambia el color del proximo circuloa mostrar (verde)
; "+": aumenta 3 píxeles el tamaño del próximo punto a mostrar
; "-": disminuye 3 píxeles el tamaño del próximo punto a mostrar
; " ": se muestra la escena vacia
(define (manejador-on-key e k)
  (cond [(equal? k "y") (make-Estado (Estado-escena e)
                                    (Estado-tam e) "yellow")]
        [(equal? k "r") (make-Estado (Estado-escena e)
                                    (Estado-tam e) "red")]
        [(equal? k "v") (make-Estado (Estado-escena e)
                                    (Estado-tam e) "green")]
        [(equal? k "+") (make-Estado (Estado-escena e)
                                    (+ (Estado-tam e) 3)
                                    (Estado-color e))]
        [(equal? k "-") (make-Estado (Estado-escena e)
                                    (- (Estado-tam e) 3)
                                    (Estado-color e))]
        [(equal? k " ") (make-Estado ESCENA
                                    (Estado-tam e)
                                    (Estado-color e))]
        
        [else e]))
 
; — Expresión big-bang —
(big-bang INICIAL
    [to-draw interpretar]
    [on-key manejador-on-key]
  [on-mouse manejador-on-mouse])


;----------------------
; EJERCICIO 4
;----------------------
;cadena-binaria: ListOf Any -> String, Dada una lista arma una cadena con los elementos de la lista que sean bits, es decir q sean el número 1 o el 0.
(check-expect (cadena-binaria (list #t #f 3 0 1 6 "o"))
               "01")
(check-expect (cadena-binaria (list 1 0 3 0 "hola" 6 0))
               "1000")
(check-expect (cadena-binaria (list )) "")
;---CODIGO---
(define (cadena-binaria l)
  (local [(define (binario? n) (or (equal? n 0) (equal? n 1)))
          ]
    (foldr string-append "" (map number->string (filter binario? l)))))

















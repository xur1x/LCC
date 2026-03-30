;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname practica6) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

;-------------------------
; EJERCICIO 1
;-------------------------

; sumanat: Number Number -> Number
; Consideramos los numeros naturales y el cero.
; Dado dos numeros naturales n y m, retorna la suma de ellos.
(define (sumanat n m) (cond [(zero? m) n]
                            [else (sumanat (add1 n) (sub1 m))]))
;--- TESTING ---
(check-expect (sumanat 0 2) 2)
(check-expect (sumanat 4 2) 6)
(check-expect (sumanat 4 0) 4)


;-------------------------
; EJERCICIO 2
;-------------------------

; multnat: Number Number -> Number
; Consideramos los numeros naturales y el cero
; Dado dos numero n y m, retorna el resultado de
; multiplicar n y m.
(define (multnat n m) (cond [(zero? m) 0]
                            [else (sumanat n (multnat n (sub1 m)))]))
;--- TESTING ---
(check-expect (multnat 2 2) 4)
(check-expect (multnat 0 2) 0)
(check-expect (multnat 2 0) 0)



;-------------------------
; EJERCICIO 3
;-------------------------

; powernat: Number Number -> Number
; Consideramos los numeros naturalees y el cero.
; Dado dos numeros a y b, retona el resultado de
; elevar el primero a la potencia del segundo usando multnat
(define (powernat a b) (cond [(zero? b) 1]
                             [else (multnat a (powernat a (sub1 b)))]))
;--- TESTING ---
(check-expect (powernat 2 4) 16)
(check-expect (powernat 5 2) 25)
(check-expect (powernat 2 0) 1)



;-------------------------
; EJERCICIO 4
;-------------------------












































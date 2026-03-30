;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |PRACTICA 1 segunda parte  xur1x|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;-------------------------------------------
; PRACTICA 1 segunda parte  -  Uriel Hoyos
;-------------------------------------------


(define (sgn2 x) (cond [(< x 0) -1]
                       [(= x 0) 0]
                       [(> x 0) 1]))


;-------------------------------------------
; 1.1 Calculando con expresiones cond
;-------------------------------------------


;--------------------1----------------------


; (sgn2 (- 2 3))  ==  -1
; (sgn2 6)  ==  1



;--------------------2----------------------

;2
(define (clasificar-imagenes imagen) (cond [(> (image-height imagen) (image-width imagen)) "Flaca"]
                                           [(= (image-height imagen) (image-width imagen)) "Cuadrada"]
                                           [(< (image-height imagen) (image-width imagen)) "Gorda"]))



;4

(define (estriangulo? a b c) (and (< a (+ b c)) (< b (+ a c)) (< c (+ b a))))

(define (tipo-triangulo1 a b c) (if (estriangulo? a b c) (cond [(= a b c) "equilatero"]
                                                              [(or (= a b) (= b c) (= a c)) "isosceles"]
                                                              [(not (= a b c)) "escaleno"])
                                                                       "no es un triangulo"))


;6

(define PC 60)
(define PL 8)


;Llevando 10 o más unidades, 18% de descuento.
(define (monto-pagar-lapiz2 l) (cond [(>= l 10) (* l 6.56)]
                                     [else (* l PL)]))



;Llevando 10 o más unidades, 18% de descuento.
(define (monto-pagar-cuaderno2 c) (cond [(>= c 10) (* c 49.2)]
                                        [else (* c PC)]))


(define (monto-total2 c l) (+ (monto-pagar-lapiz2 l) (monto-pagar-cuaderno2 c)))


;7

(define (pitagorica? a b c) (cond [(= (sqr a) (+ (sqr b) (sqr c))) #true]
                                  [(= (sqr b) (+ (sqr a) (sqr c))) #true]
                                  [(= (sqr c) (+ (sqr a) (sqr b))) #true]
                                  [else #false]))


;--------------------3----------------------

; (pitagorica? 3 5 6)  ==  #false

; (pitagorica? 3 5 4)  ==  #true



;--------------------4----------------------

(define (clasificar-imagenes-2 imagen)
                (cond [(> (image-width imagen) (* 2 (image-height imagen))) "Muy gorda"]
                      [(> (image-height imagen) (* 2 (image-width imagen))) "Muy flaca"]
                      [else (clasificar-imagenes imagen)]))



(define (clasificar-imagenes-2if imagen) (if (> (image-width imagen) (* 2 (image-height imagen)))
                                             "Muy gorda"

                                             (if (> (image-height imagen) (* 2 (image-width imagen)))
                                              "Muy flaca"
                                              (clasificar-imagenes imagen))))
 


;--------------------5----------------------

(define (clasificar t) (cond [(< t 0) "Muy frío (MF)"]
                             [(and (> t 0) (< t 15)) "Frío (F)"]
                             [(and (> t 15) (< t 25)) "Agradable (A)"]
                             [(> t 25) "Caluroso (C)"]
                             [else "error"]))




;-------------------------------------------
; 2 Predicados
;-------------------------------------------

;(define (sgn2 x) (cond [(< x 0) -1]
;                       [(= x 0) 0]
;                       [(> x 0) 1]))



(define (sgn3 x) (cond [(number? x) (sgn2 x)]
                       [(string? x) (sgn2 (string->number x))]))



;--------------------6----------------------


(define (sgn4 x)  (cond  [(boolean? x) (sgn2 (random 100))]
                         [(number? x) (sgn2 x)]
                         [(string? x) (sgn2 (string->number x))]))



;--------------------7----------------------


(define (sgn5 x)  (cond  [(boolean? x) (sgn2 (random 100))]
                         [(number? x)  (sgn2 x)]
                         [(string? x)  (sgn2 (string->number x))]
                         
                         [(image? x)   (if (> (image-height x) (image-width x)) "angosta"
                                           (if (< (image-height x) (image-width x)) "ancha" "cuadrada"))]))



;--------------------8----------------------


(define (sgn6 x)  (cond  [(boolean? x) (sgn2 (random 100))]
                         [(number? x)  (sgn2 x)]
                         [(string? x)  (sgn2 (string->number x))]
                         
                         [(image? x)   (if (> (image-height x) (image-width x)) "angosta"
                                           (if (< (image-height x) (image-width x)) "ancha" "cuadrada"))]
                         [else "Clase no soportada por la función."]))


;--------------------9----------------------

(define (sgn7 x)  (cond  [(boolean? x) (sgn2 (random 100))]
                         [(number? x)  (sgn2 x)]
                         [(string? x)  "La cadena no se puede convertir a un número"]
                         
                         [(image? x)   (if (> (image-height x) (image-width x)) "angosta"
                                           (if (< (image-height x) (image-width x)) "ancha" "cuadrada"))]
                         [else "Clase no soportada por la función."]))








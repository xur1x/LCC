;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |PRACTICA 1 primera parte   xur1x|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;-------------------------------------------
; PRACTICA 1 primera parte  -  Uriel Hoyos
;-------------------------------------------



;-------------------------------------------
; 1.1 Un programa que necesita tomar decisiones
;-------------------------------------------

(define (precio x) (if (< x 4) (* 60 x) (* 54 x)))


;-------------------------------------------
; EJERCICIO 1
;-------------------------------------------


; (define (flaca? ancho alto) (if (>= alto ancho) "angosta" "ancha"))


;-------------------------------------------
; EJERCICIO 2
;-------------------------------------------

(define (flaca? ancho alto) (if (> alto ancho)
                         "angosta"
                         (if (= alto ancho) "cuadrada" "ancha")))


;-------------------------------------------
; EJERCICIO 3
;-------------------------------------------

(define (estriangulo? a b c) (and (< a (+ b c)) (< b (+ a c)) (< c (+ b a))))



(define (tipo-triangulo a b c) (if (estriangulo? a b c) (if (= a b c) "equilatero"
                                        
                                                 (if (or (= a b) (= b c) (= a c)) "isosceles"
                                        
                                        "escaleno")) "no es un triangulo"))


;-------------------------------------------
; EJERCICIO 4
;-------------------------------------------

(define (tipo-triangulo-con-error a b c)
  
        (if (= (+ a b c) 180)
            
            (tipo-triangulo a b c)
            
            "Error: No es un triángulo"))




;-------------------------------------------
; EJERCICIO 5
;-------------------------------------------

(define PC 60)
(define PL 8)


;Lápices, llevando 5 o más: 15% de descuento.
(define (monto-pagar-lapiz l) (if (>= l 5) (* l 6.8) (* l PL)))

;Cuadernos, llevando 4 o más: 10% de descuento.
(define (monto-pagar-cuaderno c) (if (>= c 4) (* c 54) (* c PC)))

(define (monto-total c l) (+ (monto-pagar-lapiz l) (monto-pagar-cuaderno c)))


;-------------------------------------------
; EJERCICIO 6
;-------------------------------------------

;Llevando 10 o más unidades, 18% de descuento.
(define (monto-pagar-lapiz2 l) (if (>= l 10) (* l 6.56) (* l PL)))

;Llevando 10 o más unidades, 18% de descuento.
(define (monto-pagar-cuaderno2 c) (if (>= c 10) (* c 49.2) (* c PC)))


(define (monto-total2 c l) (+ (monto-pagar-lapiz2 l) (monto-pagar-cuaderno2 c)))



;-------------------------------------------
; EJERCICIO 7
;(define (pitagorica? a b c) (= (cuadrado c) (+ (cuadrado a) (cuadrado b))))
;-------------------------------------------

(define (pitagorica? a b c) (if (= (sqr a) (+ (sqr b) (sqr c)))
                                #true
(if (= (sqr b) (+ (sqr a) (sqr c)))
                                    #true
(if (= (sqr c) (+ (sqr a) (sqr b)))
                                        #true
#false))))


;-------------------------------------------
; EJERCICIO 8
;-------------------------------------------

(define (pitagorica?2 a b c) (if (= (sqr a) (+ (sqr b) (sqr c)))
                                 
                                 
(string-append "los numeros " (number->string a) ", " (number->string b) " y " (number->string c) " forman una terna")

                                
(if (= (sqr b) (+ (sqr a) (sqr c)))
    
    
(string-append "los numeros " (number->string a) ", " (number->string b) " y " (number->string c) " forman una terna")

                      
(if (= (sqr c) (+ (sqr a) (sqr b)))
    
    
(string-append "los numeros " (number->string a) ", " (number->string b) " y " (number->string c) " forman una terna")

                
(string-append "los numeros " (number->string a) ", " (number->string b) " y " (number->string c) " NO forman una terna")))))




;-------------------------------------------
; EJERCICIO 9
;-------------------------------------------



(define (collatz n) (if (and (> n 0) (integer? n))

                        (if (even? n) (/ n 2)
                                         (+ 1 (* 3 n)))

                        "No es un numero natural" ))



;-------------------------------------------
; 2 Banderas 
;-------------------------------------------

(define ESCENA (empty-scene 90 60))


; a) PERU

(define PERU (place-image (rectangle 30 58 "solid" "red") 16 30
             (place-image (rectangle 30 58 "solid" "red") 74 30 ESCENA)))


; b) ITALIA

(define ITALIA (place-image (rectangle 30 58 "solid" "green") 16 30
               (place-image (rectangle 30 58 "solid" "red")   74 30 ESCENA)))


; d) ALEMANIA

(define ALEMANIA (place-image (rectangle 90 20 "solid" "black")  45 11
                 (place-image (rectangle 90 20 "solid" "red")    45 31
                 (place-image (rectangle 90 20 "solid" "yellow") 45 50 ESCENA))))
  
; d) HOLANDA

(define HOLANDA  (place-image (rectangle 90 20 "solid" "red")   45 11
                 (place-image (rectangle 90 20 "solid" "white") 45 31
                 (place-image (rectangle 90 20 "solid" "blue")  45 50 ESCENA))))


; f)

(define (bandera-hor x y z) (place-image (rectangle 90 20 "solid" x) 45 11
                            (place-image (rectangle 90 20 "solid" y) 45 31
                            (place-image (rectangle 90 20 "solid" z) 45 50 ESCENA))))


; g) 

(define (bandera-vert x y z) (place-image (rectangle 29 58 "solid" x) 15 30
                             (place-image (rectangle 31 58 "solid" y) 45 30
                             (place-image (rectangle 29 58 "solid" z) 75 30 ESCENA))))



; h) 

;(bandera-vert "blue" "white" "red")



; i)

;-------SUDAN---------------

;triangulo rotado
(define TRI-ROT (rotate -90 (triangle 90 "solid" "green")))


(define SUDAN (place-image TRI-ROT 10 30 (bandera-hor "red" "white" "black")))



;-------ARGENTINA---------------

(define ARGENTINA (place-image (circle 8 "solid" "yellow") 44.5 30 (bandera-hor "blue" "white" "blue")))



;-------CAMERUN---------------

(define STAR (star 10 "solid" "yellow"))


(define CAMERUN (place-image STAR 45 30 (bandera-vert "green" "red" "yellow")))



; j)

(define ROMBO (rhombus 80 130 "solid" "yellow"))


(define BRASIL (place-image (circle 13 "solid" "blue") 45 30
               (place-image (scale 0.56 ROMBO)   45 30 (bandera-hor "green" "green" "green"))))


; j)


(define BANDERAS (scale 3 (above SUDAN ARGENTINA CAMERUN BRASIL)))













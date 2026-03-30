;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1-POUuri) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;--------------------------------------------------------------------

;                         PROYECTO 1

;                         - P O U -

;      Uriel Hoyos*                         Jerónimo Fernandez

;--------------------------------------------------------------------




;BACKGROUND: Image
;Es el entorno donde, dentro de este creamos las imagenes.
;
(define BACKGROUND (rectangle 400 400 "solid" "transparent"))


;-------------------------------

; IMAGEN BASE POU

;-------------------------------


;CUERPOU: cuerpo del pou.
;
(define CUERPOU (place-image (rotate 90  (ellipse 100 200 "solid" "peru"))  198 222
                (place-image (rotate 30  (ellipse 100 200 "solid" "peru")) 234 160
                (place-image (rotate -30 (ellipse 100 200 "solid" "peru")) 162 160
                                         BACKGROUND))))

;OJOPOU
;
(define OJOBASE (place-image (circle 19.9 "outline" "black") 20 20 (circle 20 "solid" "white")))
(define PUPILA  (circle 7 "solid" "black"))
(define OJO     (place-image PUPILA 20 19 OJOBASE))


;BOCAPOU
;
(define BOCA      (rotate 125 (ellipse 30 35 "outline" "black")))
(define TAPA-BOCA (rotate -25 (ellipse 35 25 "solid" "peru")))



;POU1 (imagen base POU)
;
(define POU1 (place-image TAPA-BOCA 160 150
             (place-image OJO 218 120
             (place-image OJO 178 120
             (place-image BOCA 155 157 CUERPOU)))))


;-------------------------------

; Evolucion 1 POU (patineta)

;-------------------------------

;(TABLA "color") String -> Image
; TABLA es lo que conforma la patineta misma. (colores a eleccion)
;
(define (TABLA x) (rectangle 265 20 "solid" x))



; String -> Image
; NARIZ-TABLA (de la patineta)
;
(define (NARIZ-TABLA p) (circle 10 "solid" p))

;RUEDA-def: es la rueda de la patineta (colores predeterminados)
;
(define RUEDA-def (overlay (ellipse 5 5 "solid" "white")
                           (ellipse 13 13 "solid" "black")
                           (ellipse 19 19 "solid" "red")
                           (ellipse 31 31 "solid" "black")
                           (ellipse 40 40 "solid" "red")
                           (ellipse 48 48 "solid" "gray")))

;RUEDA: es la rueda de la patineta (colores a eleccion)
;
(define (RUEDA p) (overlay (ellipse 5 5 "solid" "white")
                           (ellipse 13 13 "solid" "black")
                           (ellipse 19 19 "solid" p)
                           (ellipse 31 31 "solid" "black")
                           (ellipse 40 40 "solid" p)
                           (ellipse 48 48 "solid" "gray")))
;COLA-PATINETA
;
; String -> Image
(define (COLA p) (rotate -30 (rectangle 30 19 "solid" p)))


;PATINETA-def (colores predeterminados)
;
(define PATINETA-def (place-image (NARIZ-TABLA "red") 325 288
                     (place-image (COLA "red") 56 282.2
                     (place-image  RUEDA-def 260 322.5
                     (place-image  RUEDA-def 125 322.5
                     (place-image (TABLA "red") 197 288
                      BACKGROUND))))))


;PATINETA (colores a eleccion)
;
; String -> Image
(define (patineta p) (place-image (NARIZ-TABLA p) 325 288
                     (place-image (COLA p) 56 282.2
                     (place-image (RUEDA p) 260 322.5
                     (place-image (RUEDA p) 125 322.5
                     (place-image (TABLA p) 197 288
                      BACKGROUND))))))


;   POU EN PATINETA (evol 1)
; p = color patineta

(define (pou1 p) (place-image (patineta p) 205 196 POU1))


;-------------------------------

; Evolucion 2 POU (remera)

;-------------------------------


;LOGO-DE-BANDAS


;LISA (ninguna banda)
(define LISATEXT (text/font "" 19 "white" "Gill Sans" 'swiss 'normal 'bold #f))

(define LISA (place-image LISATEXT 200 200 BACKGROUND))

;ALMAFUERTE
(define ALMAFUERTEXT (text/font "ALMAFUERTE" 19 "white" "Gill Sans" 'swiss 'normal 'bold #f))

(define ALMAFUERTE (place-image ALMAFUERTEXT 200 200
                   (place-image (rectangle 150 30 "solid" "red") 200 201 BACKGROUND)))


;IRON MAIDEN
(define MAIDENTEXT (text/font "IRON MAIDEN" 19 "yellow" "Gill Sans" 'swiss 'normal 'bold #f))

(define IRON-MAIDEN (place-image MAIDENTEXT 200 200
                   ;(place-image (rectangle 150 30 "solid" "red")200 201
                                 BACKGROUND))

;SEPULTURA
(define SEPULTURATEXT (text/font "SEPULTURA" 19 "red" "Gill Sans" 'swiss 'normal 'bold #f))

(define SEPULTURA (place-image SEPULTURATEXT 200 200
                                 BACKGROUND))


;REMERA 
;
(define REMERA (place-image LISA 200 220
               (place-image (rotate 90  (ellipse 100 200 "solid" "black")) 198 222
               (place-image (rotate 90  (ellipse 102 202 "solid" "red"))   198 222
                                                                    BACKGROUND))))


;(pou2-pre "color") String -> Image
; pou2-pre, es una base de lo que va a ser la funcion principal de la evolucion 2.
;
(define (pou2-pre p) (place-image REMERA 200 199 (pou1 p)))



(define B1 ALMAFUERTE)
(define B2 SEPULTURA)
(define B3 IRON-MAIDEN)

(define (b? b p) (place-image b 200 220 (pou2-pre p)))


;(pou2 "color") String -> Image
; Evolucion 2 pou
; p = color patineta
; b = banda en la remera (B1,B2,B3)
(define (pou2 p b) (place-image b 200 220 (pou2-pre p)))


;-------------------------------

; Evolucion 3 POU (zapatillas)

;-------------------------------


;ZAPATILLA-def (colores predeterminados)
;

(define ZAPATILLA-def (place-image (star-polygon 13 5 2 "solid" "red") 100 100
                      (place-image (circle 17 "solid" "gray") 100 96
                      (place-image (crop/align "center" "center" 50 30 (circle 20 "solid" "gray"))
                               100 100 BACKGROUND))))

;(ZAPATILLA p) String -> Image
;   
(define (zapatilla p) (place-image (star-polygon 13 5 2 "solid" p) 100 100
                      (place-image (circle 17 "solid" "gray") 100 96
                      (place-image (crop/align "center" "center" 50 30 (circle 20 "solid" "gray"))
                               100 100 BACKGROUND))))

;(pou3 "color" "color") String String -> Image   
;Pou + patineta + zapatos  (evolucion 3)
; p = color patineta
; b = banda en la remera (B1,B2,B3)
(define (pou3 p b) (place-image (zapatilla p) 250 373
                   (place-image (zapatilla p) 350 373 (pou2 p b))))


;-------------------------------

; Evolucion 4 POU (cabello)

;-------------------------------


; (cabello-l,c,c,e "color") String -> Image
;CABELLO-L,CORTO,COM y ELLIPSEZ cumplen la funcion de cabello.
;
(define (cabello-long c)   (triangle/aas 130 40 40  "solid" c))
(define (cabello-corto c)  (triangle/aas 120 40 40  "solid" c))
(define (cabello-com c)    (triangle/sss 80 80 40 "solid" c))
(define (ellipsez c)       (ellipse 90 30 "solid" c))

; (cabello1 "color") String -> Image
; cabello1 consta de una cantidad minima de cabello 
;
(define (cabello1 c) (place-image (rotate 180 (cabello-com c)) 230 60               
                     (place-image (rotate 150 (cabello-com c)) 200 50
                             BACKGROUND)))

; (cabello2 "color") String -> Image
; cabello2 consta de una cantidad media de cabello
;
(define (cabello2 c) (place-image (cabello-long c) 120 140
                     (place-image (ellipsez c)  200 80
                     (place-image (ellipsez c)  200 60
                     (place-image (rotate 180 (cabello-com c))  230 60               
                     (place-image (rotate 150 (cabello-com c))  160 50 
                     (place-image (rotate 150 (cabello-com c))  200 50 
                     (place-image (rotate 150 (cabello-com c))  200 50 
                     (place-image (rotate -60 (cabello-com c))  120 90
                     (place-image (rotate -90 (cabello-com c))  120 90
                     (place-image (rotate -180 (cabello-com c))     130 70
                     (place-image (rotate 20 (cabello-corto c)) 140 140
                     (place-image (rotate 90 (cabello-long c))   280 120
                                  BACKGROUND)))))))))))))


; (cabello3 "color") String -> Image
; cabello3 es el cabello completo.
;
(define (cabello3 c) (place-image (cabello-long c) 120 140
                (place-image (ellipsez c) 200 80
                (place-image (ellipsez c) 200 60
                (place-image (rotate 180 (cabello-com c)) 230 60               
                (place-image (rotate 150 (cabello-com c)) 160 50 
                (place-image (rotate 150 (cabello-com c)) 200 50 
                (place-image (rotate 150 (cabello-com c)) 200 50 
                (place-image (rotate -60 (cabello-com c)) 120 90
                (place-image (rotate -90 (cabello-com c)) 120 90
                (place-image (rotate -180 (cabello-com c)) 130 70
                (place-image (rotate 20 (cabello-corto c)) 140 140
                (place-image (rotate 90 (cabello-corto c)) 280 140
                (place-image (rotate 90 (cabello-long c)) 280 120
                (place-image (rotate 90 (cabello-long c)) 290 110
                (place-image (rotate 60 (cabello-long c)) 3000 130
                (place-image (cabello-long c) 110 130
                (place-image (rotate 20 (cabello-long c)) 110 150
                             BACKGROUND))))))))))))))))))


;(pou4 "color" "color" "color") String String String -> Image   
;Pou + patineta + zapatos + CABELLO1  (evolucion 4)
; p = color patineta
; c = color cabello
; b = banda en la remera (B1,B2,B3)
(define (pou4 p c b) (place-image (cabello1 c) 200 199 (pou3 p b)))

;-------------------------------

; Evolucion 5 POU (guitarra)

;-------------------------------


;decoraciones a la guitarra
;ESTRELLA

(define ESTRELLA (star-polygon 5 7 3 "outline" "black"))


;Accesorios y partes de la guitarra
;
;MICROFONOS,PUENTE, MASTIL,CUERDAS, etc.


;PUNTO1y2 son los que estan contenidos en el microfono.
(define PUNTO  (circle 1 "solid" "white"))
(define PUNTO2 (circle 4.3 "solid" "Dark Gray"))

;
(define MICROFONO (place-image PUNTO 3.8 4.5
                  (place-image PUNTO 12.3 4.5
                  (place-image PUNTO 21 4.5
                               (ellipse 26 10 "solid" "black")))))
;
(define PUENTE (place-image PUNTO 60 49.9
               (place-image PUNTO 40 49.9
               (place-image PUNTO 55 49.9
               (place-image PUNTO 50 49.9
               (place-image PUNTO 45 49.9
               (place-image PUNTO2 28 49.9
               (place-image PUNTO2 72 49.9
               (place-image (rectangle 50 10 "solid" "Dark Gray") 50 50
                            (square 100 "solid" "transparent"))))))))))


;PICO1,2,3y4 Son los triangulos que construye el cuerpo de la guitarra y le da el aspecto de cola de tiburon.
(define (pico1 g) (rotate 20   (triangle/aas  45 100 50 "solid" g)))
(define (pico2 g) (rotate -20  (triangle/aas  100 45 50 "solid" g)))
(define (pico3 g)              (triangle 95 "solid" g))
(define (pico4 g) (rotate -180 (isosceles-triangle 50 140 "solid" g)))
;
(define (cuerpo-base g) (above (pico3 g) (beside (pico2 g) (pico1 g))))

;(cuerpo "color") String -> Image
; cuerpo es la parte de la guitarra (cola de tiburon)
;
(define (cuerpo g) (place-image MICROFONO 77 45
                   (place-image MICROFONO 77 65
                   (place-image PUENTE    77 85
                   (place-image (pico4 g) 78 90.7  (cuerpo-base g))))))

;MASTIL de la guitarra.
(define MASTIL-BASE (rectangle 25 150 "solid" "Dark Goldenrod"))
(define TRASTES     (rectangle 25 1.5 "solid" "white"))
(define MASTIL (place-image TRASTES 12 9
               (place-image TRASTES 12 20
               (place-image TRASTES 12 30
               (place-image TRASTES 12 40
               (place-image TRASTES 12 50
               (place-image TRASTES 12 60
               (place-image TRASTES 12 70
               (place-image TRASTES 12 80
               (place-image TRASTES 12 90
               (place-image TRASTES 12 100
               (place-image TRASTES 12 110
               (place-image TRASTES 12 120
               (place-image TRASTES 12 130
               (place-image TRASTES 12 138
               (place-image TRASTES 12 145
               (place-image TRASTES 12 151
               (place-image TRASTES 12 157 MASTIL-BASE))))))))))))))))))


;TRIANGLE, RECTANGLE y RECTANGLE2 forman la pala de la guitarra (la parte de arriba)
;
(define (triangle1 g)   (rotate 180 (triangle/aas  97 55 28 "solid" g)))
(define  RECTANGLE     (rectangle 25.5 5 "solid" "Dark Gray"))
(define (rectangle2 g) (rectangle 20 10 "solid" g))
;
(define (pala g) (above/align "left" (rotate -20 (triangle1 g)) RECTANGLE))

;(define TRIANGLE (rotate 180 (triangle/aas  97 55 28 "solid" "white")))
;(define RECTANGLE (rectangle 25.5 5 "solid" "Dark Gray"))
;(define RECTANGLE2 (rectangle 20 10 "solid" "white"))
;(define PALA (above/align "left" (rotate -20 TRIANGLE) RECTANGLE))



;GUITARRA y CUERDAS
;
(define CUERDA (rectangle 1 203 "solid" "black"))

;(guitarra "color") String -> Image
;
(define (guitarra g) (place-image CUERDA 159.6 264
                     (place-image CUERDA 154.6 264
                     (place-image CUERDA 149.6 264
                     (place-image CUERDA 144.6 264
                     (place-image CUERDA 139.8 264
                     (place-image ESTRELLA 157 147
                     (place-image (pala g) 161.5 141
                     (place-image (rectangle2 g) 153 158
                     (place-image MASTIL 150 240
                     (place-image ESTRELLA 110 380
                     (place-image ESTRELLA 190 380
                     (place-image (cuerpo g) 150 350
                     (rectangle 300 500 "solid" "transparent"))))))))))))))


;(pou5 "color" "color" B?) String String -> Image  
;Pou + patineta + zapatos + CABELLO2  (evolucion 5)
; p = color patineta
; c = color cabello
; b = banda en la remera (B1,B2,B3)
(define (pou5 p c b) (place-image (cabello2 c) 200 199 (pou4 p c b)))


;-------------------------------

; Evolucion g POU (cabello completo)

;-------------------------------


;(pou6 p c g b) String String String String -> Image 
;Pou + patineta + zapatos + CABELLO3 + GUITARRA  (evolucion 6)
;
; p = color patineta
; c = color cabello
; g = color guitarra
; b = banda en la remera (B1,B2,B3)
(define (pou6 p c g b) (place-image (rotate -45 (guitarra g)) 240 170
                       (place-image (cabello3 c)                200 199 (pou4 p c b))))


;POU6-def, es la evolucion 6 de pou con los colores predeterminados.
;
(define POU6-def (pou6 "red" "black" "white" B1))












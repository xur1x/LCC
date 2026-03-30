;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1-GDuri) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;--------------------------------------------------------------------

;                         PROYECTO 1

;                      - GEOMETRY DASH -

;      Uriel Hoyos*                         Jerónimo Fernandez

;--------------------------------------------------------------------

;BACKGROUND: Image
;Es el entorno donde, dentro de este creamos las imagenes.

;BACKGROUND: el que se utilizo para el cubo Geometry Dash.
;BACKGROUNDs: este es un entorno mas reducido donde creamos la boca y ojos.
;BACKGROUNDx: este se uso a partir de que, al cubo GD, se le implementó el cuerpo.
(define BACKGROUND  (rectangle 400 400 "outline" "transparent"))
(define BACKGROUNDs (rectangle 200 100 "outline" "transparent"))
(define BACKGROUNDx (rectangle 400 700 "outline" "transparent"))


;-------------------------------

; IMAGEN BASE GEOMETRY DASH

;-------------------------------
;(CUERPO-GD "color" "color") - String String -> Image
;
; La funcion CUERPO-GD genera el cubo donde luego iran los ojos y la boca.
(define (CUERPO-GD x z)     (place-image (square 200 "solid" x) 200 200
                            (place-image (square 213 "solid" "black") 200 200
                            (place-image (square 219 "solid" z) 200 200 BACKGROUND))))

;(OJO-GD "color") - String -> Image
;
; OJO-GD, es el ojo del cubo GD.
(define (OJO-GD x)   (place-image (square 30 "solid" x) 50 50
                     (place-image (square 40 "solid" "black") 50 50          BACKGROUNDs)))


;(BOCA-GD "color") - String -> Image
;
; BOCA-GD, es la boca del cubo GD.
(define (BOCA-GD x)   (place-image (rectangle 120 25 "solid" x) 70 50
                      (place-image (rectangle 130 35 "solid" "black") 70 50  BACKGROUNDs)))

#|GD-def, es la imagen base del cubo GD con sus colores predeterminados|#
;
(define GD-def (place-image (BOCA-GD "aqua")   230 220
               (place-image (OJO-GD "aqua")    215 160
               (place-image (OJO-GD "aqua")    285 160
               (place-image (CUERPO-GD "orange" "aqua") 200 200 BACKGROUND)))))


;(GD "color" "color") - String String -> Image
;
; la funcion GD, es lo mismo que GD-def. Pero esta recibe colores a eleccion.
(define (GD x y) (place-image (BOCA-GD y)     230 220
                 (place-image (OJO-GD y)      215 160
                 (place-image (OJO-GD y)      285 160
                 (place-image (CUERPO-GD x y) 200 200 BACKGROUND)))))


;-------------------------------

; Evolucion 1 GEOMETRY DASH

;-------------------------------


#|GD1-def, es la evol 1 de GD. |#
;
(define GD1-def (place-image (BOCA-GD "Dark green")      230 220
                (place-image (OJO-GD "Dark green")  215 160
                (place-image (OJO-GD "Dark green")  285 160
                (place-image (CUERPO-GD "olive" "dark cyan") 200 200 BACKGROUND)))))


;-------------------------------

; Evolucion 2 GEOMETRY DASH

;-------------------------------


#|GD2, es la evol 2 de GD. |#
;
(define GD2 (place-image (BOCA-GD "black")  230 220
            (place-image (OJO-GD  "black")  215 160
            (place-image (OJO-GD  "black")  285 160
            (place-image (CUERPO-GD "forest green" "green") 200 200 BACKGROUND)))))


;-------------------------------

; Evolucion 3 GEOMETRY DASH

;-------------------------------


;(RECTANGULO1 "color") String -> Image
;(RECTANGULO2 "color") String -> Image
;Rectangulo 1,2 se utilizaron para construir la boca del creeper.
;
(define (RECTANGULO1 y) (rectangle 36 50 "solid" y))
(define (RECTANGULO2 y) (rectangle 60 40 "solid" y))


;OJO-CREEPER-def, ojo default del creeper (negro)
;
(define OJO-CREEPER-def (square 48 "solid" "black"))


;(OJO-CREEPER "color") - String -> Image
; Esta funcion es lo mismo que la constante anterior con colores a eleccion.
;
(define (OJO-CREEPER y) (square 48 "solid" y))


;OJOR-CREEPER, esta constante es el ojo Rojo del creeper.
;
(define OJOR-CREEPER (square 25 "solid" "red"))


;(BOCA-CREEPER "color") - String -> Image
; Esta funcion construye la boca del creeper. (colores a eleccion)
;
(define (BOCA-CREEPER y) (place-image (RECTANGULO2 y)      200 200
                         (place-image (RECTANGULO1 y)      153 233
                         (place-image (RECTANGULO1 y)      247 233
                         (place-image (rectangle 130 35 "solid" y)  200 220
                                      BACKGROUND)))))


#|GD3-def, es la evol 3 de GD. (colores predeterminados)|#
;
(define GD3-def (place-image OJO-CREEPER-def  148 160
                (place-image OJO-CREEPER-def  252 160
                (place-image (BOCA-CREEPER "black") 200 215
                (place-image (CUERPO-GD "forest green" "green") 200 200 BACKGROUND)))))


;(GD3 "color" "color") - String String -> Image
;
; GD3 es GD3-def, pero esta recibe dos colores a eleccion.
(define (GD3 x y) (place-image (OJO-CREEPER y)  148 160
                  (place-image (OJO-CREEPER y)  252 160
                  (place-image (BOCA-CREEPER y) 200 215
                  (place-image (CUERPO-GD x y) 200 200 BACKGROUND)))))


#|;CCR es GD3-def, pero version enojado.|#
;
(define CCR     (place-image OJOR-CREEPER  168.8 179
                (place-image OJOR-CREEPER  232   179
                (place-image OJO-CREEPER-def  158.8 170
                (place-image OJO-CREEPER-def  242   170
                (place-image OJO-CREEPER-def  148 160
                (place-image OJO-CREEPER-def  252 160
                (place-image (BOCA-CREEPER "black") 200 215
                (place-image (CUERPO-GD "forest green" "green") 200 200 BACKGROUND)))))))))


;-------------------------------

; Evolucion 4 GEOMETRY DASH

;-------------------------------


;CUERPO-CREEPER-def es el tronco del creeper con sus valores predeterminados.
;
(define CUERPO-CREEPER-def (place-image (rectangle 170 330 "solid" "forest green") 200 200
                           (place-image (rectangle 180 340 "solid" "black")        200 200
                           (place-image (rectangle 185 345 "solid" "green")        200 200
                            BACKGROUNDx))))


;(CUERPO-CREEPER "color" "color") String String -> Image
; CUERPO-CREEPER es lo mismo que CUERPO-CREEPER-def, pero con colores a eleccion.
;
(define (CUERPO-CREEPER x y) (place-image (rectangle 170 330 "solid" x) 200 200
                             (place-image (rectangle 180 340 "solid" "black")        200 200
                             (place-image (rectangle 185 345 "solid" y)        200 200
                              BACKGROUNDx))))


;GD4 es la evolucion 4 del GD que tiene los valores predeterminados.
;
(define GD4-def (place-image GD3-def 200 130
                (place-image CUERPO-CREEPER-def 200 540 BACKGROUNDx)))



;(GD4 "color" "color") String String -> Image
; GD4, Lo mismo que GD4-def, pero con colores a eleccion.
;
(define (GD4 x y) (place-image (GD3 x y) 200 130
                  (place-image (CUERPO-CREEPER x y) 200 540 BACKGROUNDx)))


;-------------------------------

; Evolucion 5 GEOMETRY DASH

;-------------------------------




;(RECTANGLE3 "color"): String -> image
; RECTANGLE3, son los cuadraditos que forman los zapatos del creeper.
;
(define (RECTANGLE3 y) (square 30 "solid" y))


;CUADRADOS, es el conjunto de los mismos uno al lado del otro.
;
(define CUADRADOS (beside (RECTANGLE3 "dark olive green")
                          (RECTANGLE3 "gray")
                          (RECTANGLE3 "dark olive green")
                          (RECTANGLE3 "gray")))


;ZAPAS-CREEPER: es el zapato del creeper.
;
(define ZAPAS-CREEPER (above CUADRADOS (beside (RECTANGLE3 "gray")
                                               (RECTANGLE3 "dark olive green")
                                               (RECTANGLE3 "gray")
                                               (RECTANGLE3 "dark olive green"))))


;PIE-CREEPER-def: es la pierna del creeper con sus zapatos puestos (valores predeterminados).
;
(define PIE-CREEPER-def (place-image ZAPAS-CREEPER 200 235
                        (place-image (rectangle 120 130 "solid" "forest green") 200 200
                        (place-image (rectangle 130 140 "solid" "black")        200 200
                        (place-image (rectangle 135 145 "solid" "green")        200 200 
                                                         BACKGROUND)))))


;(PIE-CREEPER "color" "color") String String -> Image
; PIE-CREEPER, es lo mismo que PIE-CREEPER-def, pero con colores a eleccion.
;
(define (PIE-CREEPER x y) (place-image ZAPAS-CREEPER 200 235
                          (place-image (rectangle 120 130 "solid" x) 200 200
                          (place-image (rectangle 130 140 "solid" "black")        200 200
                          (place-image (rectangle 135 145 "solid" y)        200 200 
                                                      BACKGROUND)))))


; GD5-def evolucion 5 (valores predeterminados)
;
(define GD5-def  ;(place-image OJO-CREEPER-def  158.8 100
                 ;(place-image OJO-CREEPER-def  242   100
                 (place-image PIE-CREEPER-def 135 550
                 (place-image PIE-CREEPER-def 265 550 GD4-def)))




;(GD5 "color" "color") String String -> Image
;GD5: Lo mismo que GD5-def, pero con colores a eleccion.  (evolucion 5)
;
(define (GD5 x y)  ;(place-image OJO-CREEPER-def  158.8 100
                   ;(place-image OJO-CREEPER-def  242   100
                   (place-image (PIE-CREEPER x y) 135 550
                   (place-image (PIE-CREEPER x y) 265 550 (GD4 x y))))


;-------------------------------

; Evolucion 6 GEOMETRY DASH

;-------------------------------


; REL = RELAMPAGOS
; Se tratan rectangulos, los cuales se ivocan por encima de la figura, cubriendo toda la silueta
; de la misma. Dando un efecto de un creeper electrico.
;

;REL1 es un rectangulo/cuadrado.
;
(define REL1 (underlay  (rectangle 60 50 90 "aqua")
                        (rectangle 60 50 90 "aqua")))
;REL2 es un rectangulo.
;
(define REL2 (underlay  (rectangle 60 30 90 "aqua")
                        (rectangle 60 30 90 "aqua")))


;RELAMPAGOS-ALL cubren toda la silueta del creeper.
;
(define RELAMPAGO-ALL  (place-image REL2  172 40 
                       (place-image REL2  310 40
                                    ;
                       (place-image REL2  92  90   
                       (place-image REL2  230 70
                                    ;
                       (place-image REL2  172 140
                       (place-image REL2  310 140
                                    ;
                       (place-image REL1  172 200
                       (place-image REL2  242 200
                                    ;
                       (place-image REL2  92   200
                       (place-image REL1  280   280
                                    ;;
                       (place-image REL2  130 280
                       (place-image REL2  200 300
                       (place-image REL2  160 350
                                    ;
                       (place-image REL1  250 400
                       (place-image REL1  250 400
                       (place-image REL1  250 400
                       (place-image REL1  160 440
                                    ;;
                       (place-image REL1  320 500
                       (place-image REL1  320 610
                       (place-image REL1  200 530
                       (place-image REL2  80 540
                       (place-image REL2  180 620
                                    ;
                       (place-image REL1  80 620
                         
                       (place-image (rectangle 280 240 "outline" "transparent")  200 130
                       (place-image (rectangle 230 340 "outline" "transparent")  200 300
                       (place-image (rectangle 300 180 "outline" "transparent")  200 550
                                         BACKGROUNDx)))))))))))))))))))))))))))


;R1 o (RELAMPAGOS1) cubren toda la silueta de GD.
;
(define R1 (place-image REL2 120 100
           (place-image REL2 190 120
           (place-image REL1 300 100

           (place-image REL2 90 140
           (place-image REL2 200 170
           (place-image REL2 280 160

           (place-image REL1 100 200
           (place-image REL2 180 220
           (place-image REL2 270 200

           (place-image REL2 90 260
           (place-image REL2 180 280
           (place-image REL2 300 260
                        
           (place-image REL2 200 80
           (place-image REL1 110 310
           (place-image REL1 350 210
           (place-image REL2 260 310 BACKGROUND)))))))))))))))))


;GD6-def es la evolucion 6 (colores predeterminados)
;
(define GD6-def (place-image RELAMPAGO-ALL    200 340
                (place-image OJOR-CREEPER     168.8 110
                (place-image OJOR-CREEPER     232   110
                (place-image OJO-CREEPER-def  158.8 100
                (place-image OJO-CREEPER-def  242   100 GD5-def))))))


;(GD6 "color" "color") String String -> Image
; GD6: Lo mismo que GD6-def, pero con colores a eleccion.  (evolucion 6)
;
(define (GD6 x y) (place-image OJOR-CREEPER     168.8 110
                  (place-image OJOR-CREEPER     232   110
                  (place-image (OJO-CREEPER y)  158.8 100
                  (place-image (OJO-CREEPER y)  242   100 (GD5 x y))))))



;(run-movie 3 (list GD-def GD1-def GD2 GD3-def (scale 0.6 GD4-def) (scale 0.6 GD5-def) (scale 0.6 GD6-def)))

;--------------------------------------
;Fabrica de personajes
;--------------------------------------
;/////CREEPER cuerpo completo///////
;
(define gd1 GD1-def)
(define gd2 GD2)
(define gd3 GD3-def)

(define (gd? g)    (cond [(equal? g gd1) GD1-def]
                         [(equal? g gd2) GD2]
                         [(equal? g gd3) GD3-def]
                         [(equal? g gd3) GD3-def]))


;
;

(define RO RELAMPAGO-ALL)

;(define (r? r) (if (equal? r RO)
;                   (place-image RO 200 340 gd?)
 ;                  ""
;                   ))


(define (f-creeper x y gd? r) (GD5 x y))
















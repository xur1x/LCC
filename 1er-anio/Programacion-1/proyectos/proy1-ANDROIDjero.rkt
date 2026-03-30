;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname trjFINAL) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))

;ANDROID BEBE

;ANTENAS: Se define antenas de 5px 35px, color Chartreuse
(define ANTENAS1 (rotate 30(rectangle 5 35 "solid" "Chartreuse")))
(define ANTENAS0 (rotate -30(rectangle 5 35 "solid" "Chartreuse")))

;OJO: Se define ojo de 10px redio, color white
(define OJO1 (circle 10 "solid" "white"))

;Cabeza Android: Se define cabeza 75px radio color Chartreuse
(define CABEZA1(place-image OJO1 40 30
               (place-image OJO1 100 30    
               (rotate 00 (wedge 74 180 "solid" "Chartreuse")))))

;CUERPO: Se define el torso de 110px 50px, color Chartreuse
(define CUERPO1(place-image(rectangle 150 60 "solid" "Chartreuse")200 180
              (place-image(circle 25 "solid" "Chartreuse")250 210
              (place-image(circle 25 "solid" "Chartreuse")150 210
              (place-image(rectangle 110 50 "solid" "Chartreuse")200 210
              (rectangle 400 400 "solid" "transparent"))))))

; BRAZO: Se define los brazos 30px 50px, color Chartreuse                                        
(define BRAZO1(place-image(rectangle 30 50 "solid" "Chartreuse") 110 190
             (place-image (circle 15 "solid" "Chartreuse") 110 215
             (place-image (circle 15 "solid" "Chartreuse") 110 165
             (rectangle 400 400 "solid" "transparent")))))

; PIERNA: Se define las piernas 35px 40px , de color Chartreuse
(define PIERNA1(place-image(rectangle 35 40 "solid" "Chartreuse") 165 290
              (place-image (circle 17 "solid" "Chartreuse") 165 310
              (rectangle 400 400 "solid" "transparent"))))

;Se define el android entero 
(define ANDROIDBE(place-image ANTENAS0 330 156
                 (place-image ANTENAS1 270 156
                 (place-image CABEZA1 300 193
                 (place-image CUERPO1 300 290
                 (place-image BRAZO1 290 290
                 (place-image BRAZO1 490 290
                 (place-image PIERNA1 310 245
                 (place-image PIERNA1 360 245            
                 (rectangle 600 600 "solid" "transparent"))))))))))
ANDROIDBE
;------------------------------------------------------------------------------------------

;ANTENAS: Se define antenas de 5px 35px
(define (antenas3 x) (rotate 30(rectangle 5 35 "solid" x)))
(define (antenas2 x) (rotate -30(rectangle 5 35 "solid" x)))

;OJO: Se define ojo de 7px redio, color white
(define ojo2 (circle 7 "solid" "white"))

;Cabeza Android: Se define cabeza 75px radio color Chartreuse
(define (cabeza2 x) (place-image ojo2 40 30
                      (place-image ojo2 100 30    
                            (rotate 00 (wedge 72 180 "solid" x)))))

;Cuerpo de Androide

; PIERNA2: Se define las piernas 35px 70px , de color Chartreuse
              (define (pierna3 x)(place-image
                           (rectangle 35 70 "solid" x) 231 290
                           (place-image (circle 17 "solid" x) 231 325
                           (rectangle 400 400 "solid" "transparent"))))
; PIERNA1: Se define las piernas 35px 40px , de color Chartreuse
              (define (pierna2 x)(place-image
                           (rectangle 35 70 "solid" x) 165 290
                           (place-image (circle 17 "solid" x) 165 325
                           (rectangle 400 400 "solid" "transparent"))))
 
; BRAZO2: Se define los brazos 25px 90px, color Chartreuse          
              (define (brazo2 x)(place-image
                           (rectangle 25 90 "solid" x) 290 190
                           (place-image (circle 12 "solid" x) 290 235
                           (place-image (circle 12 "solid" x) 290 145
                           (rectangle 400 400 "solid" "transparent")))))

; BRAZO1: Se define los brazos 25px 90px, color Chartreuse                             
              (define (brazo3 x)(place-image
                           (rectangle 25 90 "solid" x) 110 190
                           (place-image (circle 12 "solid" x) 110 235
                           (place-image (circle 12 "solid" x) 110 145
                           (rectangle 400 400 "solid" "transparent")))))

; CUERPO: Se define el torso de 145px 130px, color Chartreuse
           (define (cuerpo2 x )(place-image (rectangle 145 130 "solid" x) 200 200                          
                           (place-image (circle 11 "solid" x) 139 268.7
                           (place-image (circle 11 "solid" x) 261.5 268.7
                           (place-image (rotate 90(rectangle 20 115 "solid" x))200 270
                           (rectangle 400 400 "solid" "transparent"))))))

;DEFINISe define el android entero 
(define (android x) (place-image(brazo2 x)300 300
                    (place-image (brazo3 x)300 300
                    (place-image (pierna2 x)300 298
                    (place-image (pierna3 x)300 298
                    (place-image (cuerpo2 x) 300 300
                    (place-image (cabeza2 x) 300 193
                    (place-image (antenas3 x) 270 156
                    (place-image (antenas2 x) 330 156
                    (rectangle 600 600 "solid" "transparent" ))))))))))
(android "Chartreuse")
;-----------------------------------------------------------------------------------------

;ANDROID00

;ANTENAS: Se define antenas de 5px 35px
(define ANTENAS5 (rotate 30(rectangle 5 35 "solid" "Steel Blue")))
(define ANTENAS4 (rotate -30(rectangle 5 35 "solid" "Steel Blue")))

;OJO: Se define ojo de 7px redio, color white
(define OJO3 (circle 10 "solid" "white"))

;Cabeza Android: Se define cabeza 75px radio color Steel Blue y detalles
(define CABEZA3(place-image(circle 5 "solid" "Steel Blue")200 165
              (place-image(rectangle 15 17 "solid" "Slate Gray")200 165
              (place-image OJO3 175 205
              (place-image OJO3 230 205
              (place-image(rectangle 50 30 "solid" "Khaki")200 222
              (place-image(circle 30 "solid" "Khaki")230 207
              (place-image(circle 30 "solid" "Khaki")170 207
              (rotate 00 (place-image(wedge 74 180 "solid" "Steel Blue")200 200
              (rectangle 400 400 "solid" "transparent")))))))))))

; CUERPO: Se define el torso de 145px 130px, color Steel Blue
(define CUERPO3(place-image(rectangle 145 70 "solid" "Steel Blue")200 230
             (place-image (rectangle 145 130 "solid" "Slate Gray") 200 200                          
             (place-image (circle 10 "solid" "Steel Blue") 137 267
             (place-image (circle 10 "solid" "Steel Blue") 263 267
             (place-image (rotate 90(rectangle 20 125 "solid" "Steel Blue"))200 267
             (rectangle 400 400 "solid" "transparent")))))))

; BRAZO1: Se define los brazos 25px 90px, color Slate Gray                                         
(define BRAZO3(place-image(rectangle 25 50 "solid" "Steel Blue")110 210
             (place-image(rectangle 25 90 "solid" "Slate Gray") 110 190
             (place-image (circle 13 "solid" "Steel Blue") 110 235
             (place-image (circle 13 "solid" "Slate Gray") 110 145
             (rectangle 400 400 "solid" "transparent"))))))


; PIERNA1: Se define las piernas 35px 70px , de color Slate Gray
(define PIERNA3(place-image(rectangle  35 30 "solid" "Steel Blue")165 310
              (place-image(rectangle 35 70 "solid" "Slate Gray") 165 290
              (place-image (circle 18 "solid" "Steel Blue") 165 325
              (rectangle 400 400 "solid" "transparent")))))

(define ANDROID00(place-image ANTENAS5 270 155
                 (place-image ANTENAS4 330 155
                 (place-image CABEZA3 300 193
                 (place-image CUERPO3 300 300
                 (place-image BRAZO3 300 300
                 (place-image BRAZO3 480 300            
                 (place-image PIERNA3  300 298
                 (place-image PIERNA3  365 298          
                 (rectangle 600 600 "solid" "transparent"))))))))))
ANDROID00
;-------------------------------------------------------------------------------------------

;ANTENAS: Se define antenas de 5px 35px
(define ANTENASmedi(place-image(circle 4 "solid" "Slate Gray")25 10
                (place-image(rectangle 3 35 "solid" "Slate Gray")25 25
                (rectangle 50 50 "solid" "transparent"))))

(define ANTENAS2r(rotate -30(rectangle 5 35 "solid" "Slate Gray")))

(define ANTENAS1r(rotate 30(rectangle 5 35 "solid" "Slate Gray")))

;OJO: Se define ojo de 7px redio, color white
(define OJO4 (place-image(circle 3 "solid" "black") 55 56
            (rotate 62(place-image(rectangle 8 20 "solid" "black")48 42
            (place-image(circle 10 "solid" "white")40 41
            (rectangle 80 80 "solid" "transparent"))))))
;OJO: Se define ojo de 7px redio, color white
(define OJO-4 (place-image(circle 3 "solid" "black") 53 56
            (rotate -62(place-image(rectangle 8 20 "solid" "black")31 42
            (place-image(circle 10 "solid" "white")40 41
            (rectangle 80 80 "solid" "transparent"))))))

;Se define boca 110px 10px color white
(define BOCA4(place-image(line 00 10 "black")160 11
            (place-image(line 00 10 "black")145 11
            (place-image(line 00 10 "black")130 11
            (place-image(line 00 10 "black")115 11
            (place-image(line 00 10 "black")100 11
            (place-image(line 00 10 "black")85 11
            (place-image(line 00 10 "black")70 11
            (place-image(line 00 10 "black")60 11            
            (place-image(rectangle 110 10 "solid" "white")110 10
            (rectangle 220 20 "solid" "transparent")))))))))))

;Cabeza Android: Se define cabeza 75px radio color Steel Blue y detalles
(define CABEZA4r (place-image(rectangle 18 9 "solid" "Slate Gray")100 66
               (place-image OJO4 77 100
               (place-image OJO-4 120 100
               (place-image BOCA4 100 130            
               (place-image(circle 15 "solid" "black")135 100            
               (place-image(rectangle 68 30 "solid" "black")100 100
               (place-image(circle 15 "solid" "black")65 100            
               (rotate 00 (place-image(wedge 72 180 "solid" "Slate Gray")100 100
               (rectangle 200 200 "solid" "transparent")))))))))))

;Cuerpo de Androide

; PIERNA2: Se define las piernas 35px 70px , de color Slate Gray
(define PIERNA2r(place-image(rectangle 35 70 "solid" "Slate Gray") 231 290
               (place-image (circle 17 "solid" "Slate Gray") 231 325
               (rectangle 400 400 "solid" "transparent"))))
; PIERNA1: Se define las piernas 35px 70px , de color Slate Gray
(define PIERNA1r(place-image(rectangle 35 70 "solid" "Slate Gray") 165 290
               (place-image (circle 17 "solid" "Slate Gray") 165 325
               (rectangle 400 400 "solid" "transparent"))))
 
; BRAZO2
(define BRAZO2r(place-image(line 30 00 "black")290 150
              (place-image(line 30 00 "black")290 175
              (place-image(line 30 00 "black")290 200
              (place-image(line 30 00 "black")290 225
              (place-image(rectangle 30 90 "solid" "Slate Gray") 290 190
              (place-image (circle 15 "solid" "Slate Gray") 290 235
              (place-image (circle 15 "solid" "Slate Gray") 290 145
              (rectangle 400 400 "solid" "transparent")))))))))

; BRAZO1: Se define los brazos 25px 90px, color Slate Gray                                
(define BRAZO1r(place-image(line 30 00 "black")110 150
              (place-image(line 30 00 "black")110 175
              (place-image(line 30 00 "black")110 200
              (place-image(line 30 00 "black")110 225
              (place-image(rectangle 30 90 "solid" "Slate Gray") 110 190
              (place-image (circle 15 "solid"  "Slate Gray") 110 235
              (place-image (circle 15 "solid" "Slate Gray") 110 145
              (rectangle 400 400 "solid" "transparent")))))))))

; CUERPO: Se define el torso de 145px 130px, color Chartreuse
(define CUERPO4r(place-image (circle 4 "solid" "Slate Gray") 240 200
              (place-image (circle 8 "solid" "black") 240 200
              (place-image (rectangle 110 100 "solid" "Slate Gray")200 205
              (place-image (rectangle 120 110 "solid" "black")200 205
              (place-image (rectangle 145 130 "solid" "Slate Gray") 200 200                          
              (place-image (circle 10 "solid" "Slate Gray") 137 267
              (place-image (circle 10 "solid" "Slate Gray") 263 267
              (place-image (rotate 90(rectangle 20 125 "solid" "Slate Gray"))200 267
              (rectangle 400 400 "solid" "transparent"))))))))))

;DEFINI
(define ANDROID4r (place-image BRAZO2r 300 300
                 (place-image BRAZO1r 300 300
                 (place-image CUERPO4r 300 300            
                 (place-image PIERNA2r 300 298
                 (place-image PIERNA1r 300 298
                 (place-image CABEZA4r 300 193
                 (place-image ANTENAS1r 270 156
                 (place-image ANTENAS2r 330 156
                 (place-image ANTENASmedi 300 146                            
                 (rectangle 600 600 "solid" "transparent" )))))))))))

ANDROID4r
;----------------------------------------------------------------------------------------

;ANDROID4

;ANTENAS: Se define antenas de 5px 35px
(define ANTENAS1k (rotate 30(rectangle 5 35 "solid" "Slate Gray")))
(define ANTENAS2k (rotate -30(rectangle 5 35 "solid" "Slate Gray")))

;OJO: Se define ojo de 7px redio, color white
(define OJOk (circle 9 "solid" "white"))

;Cabeza Android: Se define cabeza 75px radio color Steel Gray y detalles
(define CABEZAk(place-image(circle 5 "solid" "Cornflower Blue")210 215
              (place-image(circle 5 "solid" "Cornflower Blue")189 215
              (place-image(rectangle 20 10 "solid" "Cornflower Blue")200 215
              (place-image OJOk 200 190            
              (rotate 00(place-image(wedge 72 180 "solid" "Slate Gray")200 200
              (rectangle 400 400 "solid" "transparent"))))))))

;obj
(define OBJk(place-image(circle 5 "solid" "Cornflower Blue")60 50
                (place-image(circle 5 "solid" "Cornflower Blue")40 50
                (place-image(rectangle 20 10 "solid" "Cornflower Blue")50 50
                            (rectangle 100 100 "solid" "transparent")))))

; CUERPO: Se define el torso de 145px 130px, color Slate Gray y detalles 
(define CUERPOk(place-image (circle 9 "outline" "black")240 252
              (place-image (circle 9 "outline" "black")240 228
              (place-image (circle 9 "outline" "black")240 205
              (place-image (circle 9 "outline" "black")160 252
              (place-image (circle 9 "outline" "black")160 228
              (place-image (circle 9 "outline" "black")160 205
              (place-image (circle 9 "outline" "black")260 252
              (place-image (circle 9 "outline" "black")260 228
              (place-image (circle 9 "outline" "black")260 205
              (place-image (circle 9 "outline" "black")140 252
              (place-image (circle 9 "outline" "black")140 228
              (place-image (circle 9 "outline" "black")140 205
              (place-image (circle 9 "solid" "Slate Gray")273 252
              (place-image (circle 9 "solid" "Slate Gray")273 228
              (place-image (circle 9 "solid" "Slate Gray")273 205
              (place-image (circle 9 "solid" "Slate Gray")128 252
              (place-image (circle 9 "solid" "Slate Gray")128 228
              (place-image (circle 9 "solid" "Slate Gray")128 205
              (place-image OBJk 200 175
              (place-image OBJk 200 155
              (place-image (rectangle 145 40 "solid" "Slate Gray")200 165
              (place-image (rectangle 145 43 "solid" "black")200 170
              (place-image (rectangle 68 10 "solid" "Cornflower Blue")238 140
              (place-image (rectangle 68 10 "solid" "Cornflower Blue")162 140
              (place-image (rectangle 68 10 "solid" "Cornflower Blue")238 121
              (place-image (rectangle 68 10 "solid" "Cornflower Blue")162 121
              (place-image (rectangle 145 130 "solid" "Slate Gray") 200 200                          
              (place-image (circle 10 "solid" "Slate Gray") 137 268
              (place-image (circle 10 "solid" "Slate Gray") 263 268
              (place-image (rotate 90(rectangle 20 130 "solid" "Slate Gray"))200 268
              (rectangle 400 400 "solid" "transparent"))))))))))))))))))))))))))))))))

;pies: Se define las piernas 35px 70px , de color Slate Gray
(define PIESk(place-image(circle 10 "solid" "Cornflower Blue")160 100
            (place-image(circle 10 "solid" "Cornflower Blue")40 100
            (place-image(rectangle 125 20 "solid" "Cornflower Blue")100 100
            (rectangle 200 200 "solid" "transparent")))))

(define ANDROID4k(place-image PIESk 300 390
                (place-image CUERPOk  300 300
                (place-image CABEZAk 300 190
                (place-image ANTENAS1k 270 156
                (place-image ANTENAS2k 330 156
                (rectangle 600 600 "solid" "transparent" )))))))

ANDROID4k
;-----------------------------------------------------------------------------------------

;ANTENAS;ANTENAS: Se define antenas de 5px 35px
(define (antenas1f x) (rotate 30(rectangle 5 35 "solid" "Dark Blue")))
(define (antenas2f x) (rotate -30(rectangle 5 35 "solid" "Dark Blue")))

;OJO: Se define ojo de 7px redio, color white
(define ojof (circle 7 "solid" "red"))

;Cabeza Android: Se define cabeza 75px radio color Steel Gray y detalles
(define (cabezaf x)(place-image(rectangle 8 20 "solid" "Dark Blue") 254 110
                  (place-image(rectangle 8 20 "solid" "Dark Blue") 240 110
                  (place-image(rectangle 30 20 "solid" "Dark Blue") 155 110
                  (place-image ojof 208 110
                  (place-image(rectangle 40 20 "solid" "Dark Blue") 205 110
                  (place-image(rectangle 145 10 "solid" "Dark Blue")200 135                      
                  (rotate 00 (place-image(wedge 72 180 "solid" "Dim Gray")200 100
                  (rectangle 400 200 "solid" "transparent"))))))))))

;Cuerpo de Androide

; PIERNA1: Se define las piernas 35px 70px , de color Slate Gray
              (define (pierna1f x)(place-image
                           (rectangle 40 70 "solid" x) 200 275
                           (place-image (circle 20 "solid" x) 200 310
                           (rectangle 400 400 "solid" "transparent"))))
 
; BRAZO2: Se define los brazos 25px 90px
              (define (brazo2f x)
                           (place-image(rectangle 30 8 "solid" "Dim Gray")297 305
                           (place-image(line 28 00 "Dark Blue") 297 295
                           (place-image(line 28 00 "Dark Blue") 297 285    
                           (place-image(line 28 00 "Dark Blue") 297 275
                           (place-image(ellipse 10 28 "solid" "Dark Blue")306 150
                           (place-image(rectangle 8 90 "solid" "Dim Gray")306 217
                           (place-image(rectangle 8 115 "solid" "white")290 202
                           (place-image(rectangle 15 120 "solid" "Dim Gray")290 202
                           (place-image(rectangle 36 170 "solid" x) 296 225
                           (place-image(circle 18 "solid" x) 296 310
                           (place-image(circle 18 "solid" x) 296 142
                           (rectangle 400 400 "solid" "transparent")))))))))))))
; BRAZO1: Se define los brazos 25px 90px                                      
              (define (brazo1f x)
                           (place-image(rectangle 30 8 "solid" "Dim Gray") 105 305
                           (place-image(line 28 00 "Dark Blue") 105 295
                           (place-image(line 28 00 "Dark Blue") 105 285    
                           (place-image(line 28 00 "Dark Blue") 105 275          
                           (place-image(ellipse 10 28 "solid" "Dark Blue") 95 150
                           (place-image(rectangle 8 90 "solid" "Dim Gray")95 217
                           (place-image(rectangle 8 115 "solid" "white")111 202
                           (place-image(rectangle 15 120 "solid" "Dim Gray")111 202
                           (place-image(rectangle 36 170 "solid" x) 105 225
                           (place-image(circle 18 "solid" x) 105 310
                           (place-image(circle 18 "solid" x) 105 142
                           (rectangle 400 400 "solid" "transparent")))))))))))))

; CUERPO: Se define el torso de 145px 130px, color Slate Gray
              (define (cuerpof x )
                           (place-image(circle 12 "solid" "white")148 250
                           (place-image(rectangle 30 30 "solid" "Dim Gray")148 250
                           (place-image(rectangle 21 8 "solid" "white")253 258
                           (place-image(rectangle 22 9 "solid" "Dark Blue")253 245          
                           (place-image(rectangle 30 30 "solid" "Dim Gray")253 250
                           (place-image(ellipse 60 10 "solid" "Dark Blue")200 188          
                           (place-image(ellipse 60 10 "solid" "Dark Blue")200 175
                           (place-image(rectangle 60 8 "solid" "Dark Blue")200 160
                           (place-image(rectangle 60 8 "solid" "Dark Blue")200 230          
                           (place-image(rectangle 60 8 "solid" "Dark Blue")200 250          
                           (place-image(rectangle 60 20 "solid" "white")200 205                      
                           (place-image(rectangle 70 75 "solid" "Dim Gray")200 185
                           (place-image(rectangle 18 78 "solid" "white")256 185          
                           (place-image(rectangle 25 85 "solid" "Dim Gray")256 185
                           (place-image(rectangle 18 78 "solid" "white")145 185            
                           (place-image(rectangle 25 85 "solid" "Dim Gray")145 185
                           (place-image(rectangle 145 120 "solid" x)200 200
                           (place-image(circle 10 "solid" x) 137 260
                           (place-image(circle 10 "solid" x) 263 260
                           (place-image(rotate 90(rectangle 20 121 "solid" x))200 260
                           (rectangle 400 400 "solid" "transparent"))))))))))))))))))))))

;DEFINI

(define (r2 x) (place-image(brazo2f x)300 300
                    (place-image (brazo1f x)300 300                    
                    (place-image (pierna1f x)300 298
                    (place-image (cuerpof x) 300 300
                    (place-image (cabezaf x) 300 193
                    (place-image (antenas1f x) 270 156
                    (place-image (antenas2f x) 330 156
                    (rectangle 600 600 "solid" "transparent" )))))))))
(r2 "white")

;-----------------------------------------------------------------------------------------

(define (todo o )
  (cond [(equal? o 1) ANDROIDBE ]
        [(equal? o 2) (android "Chartreuse")]
        [(equal? o 3) ANDROID00]
        [(equal? o 4) ANDROID4r]
        [(equal? o 5) ANDROID4k]
        [(equal? o 6) (r2 "white")]
        [else ANDROIDBE]
        ))
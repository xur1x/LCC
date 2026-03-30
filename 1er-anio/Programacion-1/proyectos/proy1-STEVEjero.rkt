;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |STEVEtp (1)|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;STEVEBE

;CABEZA: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz 
(define CABEZA1(place-image(rectangle 26 13 "solid" "Sienna")200 220
              (place-image(rectangle 13 13 "solid" "Royal Blue")218 208
              (place-image(rectangle 26 13 "solid" "White")225 208
              (place-image(rectangle 13 13 "solid" "Royal Blue")182 208              
              (place-image(rectangle 26 13 "solid" "White")175 208                   
              (place-image(rectangle 16 28 "solid" "Brown")246 180
              (place-image(rectangle 16 28 "solid" "Brown")154 180
              (place-image(rectangle 108 28 "solid" "Brown")200 160
              (place-image(rectangle 108 108 "solid" "Dark Salmon")200 200
                          (rectangle 400 400 "solid" "transparent")))))))))))

;CEURPO: Se define el torso del cuerpo de 108px 85px, de color Dodger Blue  
(define CUERPO1(place-image(rectangle 14 15 "solid" "Dodger Blue")235 248
              (place-image(rectangle 12 35 "solid" "Dodger Blue")248 250
              (place-image(rectangle 20 10 "solid" "Dark Salmon")200 170
              (place-image(rectangle 40 10 "solid" "Dark Salmon")200 160
              (place-image(rectangle 108 85 "solid" "Dodger Blue")200 200
                          (rectangle 400 400 "solid" "transparent")))))))

;BRAZO: Se define el brazo de 45px 120px color Dark Salmon,
;tambien la manga de la remera de 45px 50px color Dodger Blue
(define BRAZO1 (place-image(rectangle 45 50 "solid" "Dodger Blue")100 65
              (place-image(rectangle 45 120 "solid" "Dark Salmon")100 100
                          (rectangle 400 400 "solid" "transparent"))))

;PIERNAS: Se de define la pierna de 108px 120px, color Royal Blue y detalles 
(define PIERNAS1(place-image(rectangle 25 10 "solid" "Steel Blue")130 110
               (place-image(rectangle 25 10 "solid" "Steel Blue")73 110
               (place-image(rectangle 108 120 "solid" "Royal Blue")100 100
                           (rectangle 400 400 "solid" "transparent")))))

;PIES: Se define los pies  de 180px 25px, color Dim Gray
(define PIES1(place-image(line 00 25 "Cornflower Blue")100 100
            (place-image(rectangle 108 25 "solid" "Dim Gray")100 100
                        (rectangle 400 450 "solid" "transparent"))))

;STEVE: Se define el steve completo
(define STEVEBE(place-image CABEZA1 200 105
               (place-image CUERPO1 200 200
               (place-image BRAZO1 224 318
               (place-image BRAZO1 375 318
               (place-image PIERNAS1 298 402
               (place-image PIES1 298 499
               (rectangle 400 480 "solid" "transparent"))))))))


;------------------------------------------------------------------------------------------------------
;steve2

;CABEZA: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz
(define CABEZA2(place-image(rectangle 26 13 "solid" "Sienna")200 220
              (place-image(rectangle 13 13 "solid" "Royal Blue")218 208
              (place-image(rectangle 26 13 "solid" "White")225 208
              (place-image(rectangle 13 13 "solid" "Royal Blue")182 208              
              (place-image(rectangle 26 13 "solid" "White")175 208                   
              (place-image(rectangle 16 28 "solid" "Brown")246 180
              (place-image(rectangle 16 28 "solid" "Brown")154 180
              (place-image(rectangle 108 28 "solid" "Brown")200 160
              (place-image(rectangle 108 108 "solid" "Dark Salmon")200 200
                          (rectangle 400 400 "solid" "transparent")))))))))))

;PIERNAS: Se de define la pierna de 108px 170px, color Royal Blue y detalles
(define PIERNAS2(place-image(rectangle 14 15 "solid" "Dodger Blue")235 175
               (place-image(rectangle 12 35 "solid" "Dodger Blue")248 180
               (place-image(rectangle 25 10 "solid" "Steel Blue")175 255
               (place-image(rectangle 25 10 "solid" "Steel Blue")228 255
               (place-image(rectangle 108 170 "solid" "Royal Blue")200 250
                           (rectangle 400 400 "solid" "transparent")))))))

;BRAZO1: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px color Dodger Blue y detalles
(define BRAZO2(place-image(rectangle 13 15 "solid" "Salmon")122 285
              (place-image(rectangle 10 25 "solid" "Salmon")130 220
              (place-image(rectangle 10 50 "solid" "Salmon")160 238
              (place-image(rectangle 50 55 "solid" "Dodger Blue")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent")))))))

;BRAZO2: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px color Dodger Blue y detalles
(define BRAZO22(place-image(rectangle 10 35 "solid" "CornflowerBlue")158 170
              (place-image(rectangle 13 15 "solid" "Salmon")158 285
              (place-image(rectangle 10 25 "solid" "Salmon")150 220
              (place-image(rectangle 10 50 "solid" "Salmon")120 238
              (place-image(rectangle 50 55 "solid" "Dodger Blue")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))

;CUERPO: Se define el torso del cuerpo de 108px 120px, de color Dodger Blue  
(define CUERPO2(place-image(rectangle 10 50 "solid" "CornflowerBlue")155 225
              (place-image(rectangle 20 12 "solid" "Dark Salmon")200 160
              (place-image(rectangle 40 13 "solid" "Dark Salmon")200 149
              (place-image(rectangle 108 120 "solid" "Dodger Blue")200 203
                          (rectangle 400 400 "solid" "transparent"))))))

;PIES: Se define los pies  de 180px 35px, color Dim Gray
(define PIES2(place-image(line 00 35 "Cornflower Blue")100 100
            (place-image(rectangle 108 35 "solid" "Dim Gray")100 100
                        (rectangle 200 200 "solid" "transparent"))))

(define STEVE2
  (place-image CUERPO2 200 200
  (place-image CABEZA2 200 100
  (place-image PIES2 200 415            
  (place-image PIERNAS2 200 295
  (place-image BRAZO2 181 200
  (place-image BRAZO22 339 200             
  (rectangle 400 480 "solid" "transparent"))))))))


;------------------------------------------------------------------------------------------------------

;STEVE3

;CABEZA: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz
(define CABEZA3(place-image(rectangle 26 13 "solid" "Sienna")200 220
              (place-image(rectangle 13 13 "solid" "Royal Blue")218 208
              (place-image(rectangle 26 13 "solid" "White")225 208
              (place-image(rectangle 13 13 "solid" "Royal Blue")182 208              
              (place-image(rectangle 26 13 "solid" "White")175 208                   
              (place-image(rectangle 16 28 "solid" "Brown")246 180
              (place-image(rectangle 16 28 "solid" "Brown")154 180
              (place-image(rectangle 108 28 "solid" "Brown")200 160
              (place-image(rectangle 108 108 "solid" "Dark Salmon")200 200
                          (rectangle 400 400 "solid" "transparent")))))))))))

;PIERNAS: Se de define la pierna de 108px 170px, color Sienna y detalles
(define PIERNAS3(place-image(rectangle 18 18 "solid" "Saddle Brown")229 259
               (place-image(rectangle 18 18 "solid" "Saddle Brown")212 243
               (place-image(rectangle 18 18 "solid" "Saddle Brown")170 260
               (place-image(rectangle 18 18 "solid" "Saddle Brown")188 243
               (place-image(rectangle 12 140 "solid" "Saddle Brown")200 225
               (place-image(rectangle 15 140 "solid" "Saddle Brown")248 225
               (place-image(rectangle 15 140 "solid" "Saddle Brown")153 225
               (place-image(rectangle 108 170 "solid" "Sienna")200 250
                           (rectangle 400 400 "solid" "transparent"))))))))))

;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px color Dodger Blue y detalles
(define BRAZO3(place-image(rectangle 12 12 "solid" "Saddle Brown")160 155
              (place-image(rectangle 15 15 "solid" "Saddle Brown")120 170
              (place-image(rectangle 12 58 "solid" "Saddle Brown")110 168
              (place-image(rectangle 62 12 "solid" "Saddle Brown")140 142
              (place-image(rectangle 62 12 "solid" "Saddle Brown")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")122 285
              (place-image(rectangle 10 25 "solid" "Salmon")130 220
              (place-image(rectangle 10 50 "solid" "Salmon")160 238
              (place-image(rectangle 62 59 "solid" "Sienna")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))
;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px color Dodger Blue y detalles
(define BRAZO33(place-image(rectangle 12 12 "solid" "Saddle Brown")120 155
              (place-image(rectangle 15 15 "solid" "Saddle Brown")158 170
              (place-image(rectangle 12 58 "solid" "Saddle Brown")170 168
              (place-image(rectangle 62 12 "solid" "Saddle Brown")140 142
              (place-image(rectangle 62 12 "solid" "Saddle Brown")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")158 285
              (place-image(rectangle 10 25 "solid" "Salmon")150 220
              (place-image(rectangle 10 50 "solid" "Salmon")120 238
              (place-image(rectangle 62 59 "solid" "Sienna")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))

;CUERPO: Se define el torso del cuerpo de 108px 120px, de color Sienna
(define CUERPO3(place-image(rectangle 20 12 "solid" "Saddle Brown")170 149
              (place-image(rectangle 20 12 "solid" "Saddle Brown")230 149
              (place-image(rectangle 20 10 "solid" "Saddle Brown")220 160
              (place-image(rectangle 20 10 "solid" "Saddle Brown")181 160
              (place-image(rectangle 40 10 "solid" "Saddle Brown")200 169
              (place-image(rectangle 12 86 "solid" "Saddle Brown")250 210
              (place-image(rectangle 12 86 "solid" "Saddle Brown")151 210
              (place-image(rectangle 30 15 "solid" "Saddle Brown")240 260
              (place-image(rectangle 30 15 "solid" "Saddle Brown")160 260
              (place-image(rectangle 25 15 "solid" "Saddle Brown")177 270
              (place-image(rectangle 25 15 "solid" "Saddle Brown")223 270
              (place-image(rectangle 35 12 "solid" "Saddle Brown")200 283
              (place-image(rectangle 70 15 "solid" "Sienna")200 270
              (place-image(rectangle 20 12 "solid" "Dark Salmon")200 160
              (place-image(rectangle 40 13 "solid" "Dark Turquoise")200 149
              (place-image(rectangle 108 120 "solid" "Sienna")200 203
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))))

;PIES: Se define los pies  de 180px 35px, color Dim Gray
(define PIES3(place-image(line 00 35 "Cornflower Blue")100 100
            (place-image(rectangle 108 35 "solid" "Dim Gray")100 100
                        (rectangle 200 200 "solid" "transparent"))))

(define STEVE3
  (place-image CUERPO3 200 200
  (place-image CABEZA3 200 100
  (place-image PIES3 200 415            
  (place-image PIERNAS3 200 295
  (place-image BRAZO3 181 200
  (place-image BRAZO33 339 200             
  (rectangle 400 480 "solid" "transparent"))))))))


;------------------------------------------------------------------------------------------------------

          ;ESTEVE4

;CABEZA4: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz
(define CABEZA4(place-image(rectangle 26 13 "solid" "Sienna")200 220
              (place-image(rectangle 13 13 "solid" "Royal Blue")218 208
              (place-image(rectangle 26 13 "solid" "White")225 208
              (place-image(rectangle 13 13 "solid" "Royal Blue")182 208              
              (place-image(rectangle 26 13 "solid" "White")175 208                   
              (place-image(rectangle 16 28 "solid" "Brown")246 180
              (place-image(rectangle 16 28 "solid" "Brown")154 180
              (place-image(rectangle 108 28 "solid" "Brown")200 160
              (place-image(rectangle 108 108 "solid" "Dark Salmon")200 200
                          (rectangle 400 400 "solid" "transparent")))))))))))

;PIERNAS: Se de define la pierna de 108px 170px, color Royal Blue y detalles
(define PIERNAS4(place-image(rectangle 25 10 "solid" "Steel Blue")175 255
               (place-image(rectangle 25 10 "solid" "Steel Blue")228 255
               (place-image(rectangle 108 170 "solid" "Royal Blue")200 250
                           (rectangle 400 400 "solid" "transparent")))))

;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px y detalles
(define BRAZO4(place-image(rectangle 12 12 "solid" "white")160 155
              (place-image(rectangle 15 15 "solid" "Dark Gray")120 170
              (place-image(rectangle 12 58 "solid" "Dark Gray")110 168
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 142
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")122 285
              (place-image(rectangle 10 25 "solid" "Salmon")130 220
              (place-image(rectangle 10 50 "solid" "Salmon")160 238
              (place-image(rectangle 62 59 "solid" "Silver")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))
;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px y detalles
(define BRAZO44(place-image(rectangle 12 12 "solid" "white")120 155
              (place-image(rectangle 15 15 "solid" "Dark Gray")158 170
              (place-image(rectangle 12 58 "solid" "Dark Gray")170 168
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 142
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")158 285
              (place-image(rectangle 10 25 "solid" "Salmon")150 220
              (place-image(rectangle 10 50 "solid" "Salmon")120 238
              (place-image(rectangle 62 59 "solid" "Silver")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))

;CUERPO: Se define el torso del cuerpo de 108px 120px, de color Silver y detalles
(define CUERPO4(place-image(rectangle 20 12 "solid" "Dark Gray")170 149
              (place-image(rectangle 20 12 "solid" "Dark Gray")230 149
              (place-image(rectangle 20 10 "solid" "Dark Gray")220 160
              (place-image(rectangle 20 10 "solid" "Dark Gray")181 160
              (place-image(rectangle 40 10 "solid" "Dark Gray")200 169
              (place-image(rectangle 50 11 "solid" "Dark Gray")200 200
              (place-image(rectangle 50 11 "solid" "Dark Gray")200 225
              (place-image(rectangle 12 86 "solid" "Dark Gray")250 210
              (place-image(rectangle 12 86 "solid" "Dark Gray")151 210
              (place-image(rectangle 30 15 "solid" "Dark Gray")240 260
              (place-image(rectangle 30 15 "solid" "Dark Gray")160 260
              (place-image(rectangle 25 15 "solid" "Dark Gray")177 270
              (place-image(rectangle 25 15 "solid" "Dark Gray")223 270
              (place-image(rectangle 35 12 "solid" "Dark Gray")200 283
              (place-image(rectangle 70 15 "solid" "Silver")200 270
              (place-image(rectangle 20 12 "solid" "Dark Salmon")200 160
              (place-image(rectangle 40 13 "solid" "Dark Salmon")200 149
              (place-image(rectangle 108 120 "solid" "Silver")200 203
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))))))

;PIES: Se define los pies  de 180px 35px, color Dim Gray
(define PIES4(place-image(rectangle 12 12 "solid" "white")140 93
            (place-image(rectangle 12 12 "solid" "white")60 93
            (place-image(rectangle 40 12 "solid" "Dark Gray")100 105
            (place-image(rectangle 100 12 "solid" "Dark Gray")100 81
            (place-image(rectangle 12 50 "solid" "Dark Gray")153 100
            (place-image(rectangle 12 50 "solid" "Dark Gray")48 100
            (place-image(rectangle 15 50 "solid" "Dark Gray")100 100
            (place-image(rectangle 108 50 "solid" "Silver")100 100
                        (rectangle 200 200 "solid" "transparent"))))))))))

(define STEVE4
  (place-image CUERPO4 200 200
  (place-image CABEZA4 200 100
  (place-image PIES4 200 415            
  (place-image PIERNAS4 200 295
  (place-image BRAZO4 181 200
  (place-image BRAZO44 339 200             
  (rectangle 400 480 "solid" "transparent"))))))))


;------------------------------------------------------------------------------------------------------

;STEVE5

;CABEZA: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz
(define CABEZA5(place-image(rectangle 13 15 "solid" "white")195 195
              (place-image(rectangle 17 17 "solid" "white")160 165
              (place-image(rectangle 12 30 "solid" "Dark Gray")207 190
              (place-image(rectangle 26 12 "solid" "Dark Gray")200 209
              (place-image(rectangle 50 15 "solid" "Dark Gray")238 182
              (place-image(rectangle 50 15 "solid" "Dark Gray")162 182
              (place-image(rectangle 108 15 "solid" "Dark Gray")200 149
              (place-image(rectangle 20 65 "solid" "Dark Gray")255 174
              (place-image(rectangle 20 65 "solid" "Dark Gray")145 174
              (place-image(rectangle 26 69 "solid" "Silver")200 180
              (place-image(rectangle 126 48 "solid" "Silver")200 165
              (place-image(rectangle 26 13 "solid" "Sienna")200 220
              (place-image(rectangle 13 13 "solid" "Royal Blue")218 208
              (place-image(rectangle 26 13 "solid" "White")225 208
              (place-image(rectangle 13 13 "solid" "Royal Blue")182 208              
              (place-image(rectangle 26 13 "solid" "White")175 208                   
              (place-image(rectangle 16 28 "solid" "Brown")246 180
              (place-image(rectangle 16 28 "solid" "Brown")154 180
              (place-image(rectangle 108 28 "solid" "Brown")200 160
              (place-image(rectangle 108 108 "solid" "Dark Salmon")200 200
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))))))))

;PIERNAS: Se de define la pierna de 108px 170px, color Royal Blue y detalles
(define PIERNAS5(place-image(rectangle 25 10 "solid" "Steel Blue")175 255
               (place-image(rectangle 25 10 "solid" "Steel Blue")228 255
               (place-image(rectangle 108 170 "solid" "Royal Blue")200 250
                           (rectangle 400 400 "solid" "transparent")))))

;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px y detalles
(define BRAZO5(place-image(rectangle 12 12 "solid" "white")160 155
              (place-image(rectangle 15 15 "solid" "Dark Gray")120 170
              (place-image(rectangle 12 58 "solid" "Dark Gray")110 168
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 142
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")122 285
              (place-image(rectangle 10 25 "solid" "Salmon")130 220
              (place-image(rectangle 10 50 "solid" "Salmon")160 238
              (place-image(rectangle 62 59 "solid" "Silver")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))
;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px y detalles
(define BRAZO55(place-image(rectangle 12 12 "solid" "white")120 155
              (place-image(rectangle 15 15 "solid" "Dark Gray")158 170
              (place-image(rectangle 12 58 "solid" "Dark Gray")170 168
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 142
              (place-image(rectangle 62 12 "solid" "Dark Gray")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")158 285
              (place-image(rectangle 10 25 "solid" "Salmon")150 220
              (place-image(rectangle 10 50 "solid" "Salmon")120 238
              (place-image(rectangle 62 59 "solid" "Silver")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))

;CUERPOS: Se define el torso del cuerpo de 108px 120px, de color Silver y detalles
(define CUERPO5(place-image(rectangle 20 12 "solid" "Dark Gray")170 149
              (place-image(rectangle 20 12 "solid" "Dark Gray")230 149
              (place-image(rectangle 20 10 "solid" "Dark Gray")220 160
              (place-image(rectangle 20 10 "solid" "Dark Gray")181 160
              (place-image(rectangle 40 10 "solid" "Dark Gray")200 169
              (place-image(rectangle 50 11 "solid" "Dark Gray")200 200
              (place-image(rectangle 50 11 "solid" "Dark Gray")200 225
              (place-image(rectangle 12 86 "solid" "Dark Gray")250 210
              (place-image(rectangle 12 86 "solid" "Dark Gray")151 210
              (place-image(rectangle 30 15 "solid" "Dark Gray")240 260
              (place-image(rectangle 30 15 "solid" "Dark Gray")160 260
              (place-image(rectangle 25 15 "solid" "Dark Gray")177 270
              (place-image(rectangle 25 15 "solid" "Dark Gray")223 270
              (place-image(rectangle 35 12 "solid" "Dark Gray")200 283
              (place-image(rectangle 70 15 "solid" "Silver")200 270
              (place-image(rectangle 20 12 "solid" "Dark Salmon")200 160
              (place-image(rectangle 40 13 "solid" "Dark Salmon")200 149
              (place-image(rectangle 108 120 "solid" "Silver")200 203
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))))))

;PIES: Se define los pies  de 180px 50px, color Silver
(define PIES5(place-image(rectangle 12 12 "solid" "white")140 93
            (place-image(rectangle 12 12 "solid" "white")60 93
            (place-image(rectangle 40 12 "solid" "Dark Gray")100 105
            (place-image(rectangle 100 12 "solid" "Dark Gray")100 81
            (place-image(rectangle 12 50 "solid" "Dark Gray")153 100
            (place-image(rectangle 12 50 "solid" "Dark Gray")48 100
            (place-image(rectangle 15 50 "solid" "Dark Gray")100 100
            (place-image(rectangle 108 50 "solid" "Silver")100 100
                        (rectangle 200 200 "solid" "transparent"))))))))))

(define STEVE5
  (place-image CUERPO5 200 200
  (place-image CABEZA5 200 100
  (place-image PIES5 200 415            
  (place-image PIERNAS5 200 295
  (place-image BRAZO5 181 200
  (place-image BRAZO55 339 200             
  (rectangle 400 480 "solid" "transparent"))))))))


;------------------------------------------------------------------------------------------------------

;STEVE6

;CABEZA6: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz
(define CABEZA6(place-image(rectangle 13 15 "solid" "white")195 195
              (place-image(rectangle 17 17 "solid" "white")160 165
              (place-image(rectangle 12 30 "solid" "Dark Gray")207 190
              (place-image(rectangle 26 12 "solid" "Dark Gray")200 209
              (place-image(rectangle 50 15 "solid" "Dark Gray")238 182
              (place-image(rectangle 50 15 "solid" "Dark Gray")162 182
              (place-image(rectangle 108 15 "solid" "Dark Gray")200 149
              (place-image(rectangle 20 65 "solid" "Dark Gray")255 174
              (place-image(rectangle 20 65 "solid" "Dark Gray")145 174
              (place-image(rectangle 26 69 "solid" "Silver")200 180
              (place-image(rectangle 126 48 "solid" "Silver")200 165
              (place-image(rectangle 26 13 "solid" "Sienna")200 220
              (place-image(rectangle 13 13 "solid" "Royal Blue")218 208
              (place-image(rectangle 26 13 "solid" "White")225 208
              (place-image(rectangle 13 13 "solid" "Royal Blue")182 208              
              (place-image(rectangle 26 13 "solid" "White")175 208                   
              (place-image(rectangle 16 28 "solid" "Brown")246 180
              (place-image(rectangle 16 28 "solid" "Brown")154 180
              (place-image(rectangle 108 28 "solid" "Brown")200 160
              (place-image(rectangle 108 108 "solid" "Dark Salmon")200 200
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))))))))

;PIRNAS6: Se de define la pierna de 108px 170px, color Silver y detalles
(define PIERNAS6(place-image(rectangle 18 18 "solid" "Dark Gray")229 259
               (place-image(rectangle 18 18 "solid" "Dark Gray")212 243
               (place-image(rectangle 18 18 "solid" "Dark Gray")170 260
               (place-image(rectangle 18 18 "solid" "Dark Gray")188 243
               (place-image(rectangle 12 140 "solid" "Dark Gray")200 225
               (place-image(rectangle 15 140 "solid" "Dark Gray")248 225
               (place-image(rectangle 15 140 "solid" "Dark Gray")153 225
               (place-image(rectangle 108 170 "solid" "Silver")200 250
                           (rectangle 400 400 "solid" "transparent"))))))))))

;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px y detalles
(define BRAZO6(place-image(rectangle 12 12 "solid" "white")160 155
              (place-image(rectangle 15 15 "solid" "Dark Turquoise")120 170
              (place-image(rectangle 12 58 "solid" "Dark Turquoise")110 168
              (place-image(rectangle 62 12 "solid" "Dark Turquoise")140 142
              (place-image(rectangle 62 12 "solid" "Dark Turquoise")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")122 285
              (place-image(rectangle 10 25 "solid" "Salmon")130 220
              (place-image(rectangle 10 50 "solid" "Salmon")160 238
              (place-image(rectangle 62 59 "solid" "Cyan")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))
;BRAZO: Se define el brazo de 50px 150px color Dark Salmon,
;tambien la manga de la remera de 45px 50px y detalles
(define BRAZO66(place-image(rectangle 12 12 "solid" "white")120 155
              (place-image(rectangle 15 15 "solid" "Dark Turquoise")158 170
              (place-image(rectangle 12 58 "solid" "Dark Turquoise")170 168
              (place-image(rectangle 62 12 "solid" "Dark Turquoise")140 142
              (place-image(rectangle 62 12 "solid" "Dark Turquoise")140 195
              (place-image(rectangle 13 15 "solid" "Salmon")158 285
              (place-image(rectangle 10 25 "solid" "Salmon")150 220
              (place-image(rectangle 10 50 "solid" "Salmon")120 238
              (place-image(rectangle 62 59 "solid" "Cyan")140 170
              (place-image(rectangle 50 150 "solid" "Dark Salmon")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))))))

;CUERPO: Se define el torso del cuerpo de 108px 120px, de color Cyan y detalles
(define CUERPO6(place-image(rectangle 20 12 "solid" "Dark Turquoise")170 149
              (place-image(rectangle 20 12 "solid" "Dark Turquoise")230 149
              (place-image(rectangle 20 10 "solid" "Dark Turquoise")220 160
              (place-image(rectangle 20 10 "solid" "Dark Turquoise")181 160
              (place-image(rectangle 40 10 "solid" "Dark Turquoise")200 169
              (place-image(rectangle 50 11 "solid" "Dark Turquoise")200 200
              (place-image(rectangle 50 11 "solid" "Dark Turquoise")200 225
              (place-image(rectangle 12 86 "solid" "Dark Turquoise")250 210
              (place-image(rectangle 12 86 "solid" "Dark Turquoise")151 210
              (place-image(rectangle 30 15 "solid" "Dark Turquoise")240 260
              (place-image(rectangle 30 15 "solid" "Dark Turquoise")160 260
              (place-image(rectangle 25 15 "solid" "Dark Turquoise")177 270
              (place-image(rectangle 25 15 "solid" "Dark Turquoise")223 270
              (place-image(rectangle 35 12 "solid" "Dark Turquoise")200 283
              (place-image(rectangle 70 15 "solid" "Cyan")200 270
              (place-image(rectangle 20 12 "solid" "Dark Salmon")200 160
              (place-image(rectangle 40 13 "solid" "Dark Turquoise")200 149
              (place-image(rectangle 108 120 "solid" "Cyan")200 203
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))))))

;PIES: Se define los pies  de 180px 50px, color Silver
(define PIES6(place-image(rectangle 12 12 "solid" "white")140 93
            (place-image(rectangle 12 12 "solid" "white")60 93
            (place-image(rectangle 40 12 "solid" "Dark Turquoise")100 105
            (place-image(rectangle 100 12 "solid" "Dark Turquoise")100 81
            (place-image(rectangle 12 50 "solid" "Dark Turquoise")153 100
            (place-image(rectangle 12 50 "solid" "Dark Turquoise")48 100
            (place-image(rectangle 15 50 "solid" "Dark Turquoise")100 100
            (place-image(rectangle 108 50 "solid" "Cyan")100 100
                        (rectangle 200 200 "solid" "transparent"))))))))))

(define STEVE6
  (place-image CUERPO6 200 200
  (place-image CABEZA6 200 100
  (place-image PIES6 200 415            
  (place-image PIERNAS6 200 295
  (place-image BRAZO6 181 200
  (place-image BRAZO66 339 200             
  (rectangle 400 480 "solid" "transparent"))))))))


;------------------------------------------------------------------------------------------------------

;STEVE777

;OJO: Se define el ojo de 35px 25px, color white y detalles 
(define OJO77(place-image(rectangle 25 10 "solid" "Brown")30 8
           (place-image(rectangle 10 12 "solid" "Dark Magenta")12 32
           (place-image(rectangle 10 25 "solid" "Dark Violet")12 25
           (place-image(rectangle 35 25 "solid" "white")25 25
                       (rectangle 50 50 "solid" "transparent"))))))

;OJO: Se define el ojo de 35px 25px, color white y detalles 
(define OJO7(place-image(rectangle 25 10 "solid" "Brown")18 8
           (place-image(rectangle 10 12 "solid" "Dark Magenta")38 32
           (place-image(rectangle 10 25 "solid" "Dark Violet")38 25
           (place-image(rectangle 35 25 "solid" "white")25 25
                       (rectangle 50 50 "solid" "transparent"))))))

;CABEZA: Se define la forma de la cara de 108px 108px, los ojo, el pelo y la nariz
(define CABEZA7(place-image(rectangle 13 13 "solid" "Brown")194 185
              (place-image(rectangle 25 10 "solid" "Brown")200 175
              (place-image(rectangle 25 10 "solid" "white")200 230
              (place-image OJO77 230 205
              (place-image OJO7 170 205
              (place-image(rectangle 108 24 "solid" "Brown" )200 158
              (place-image(rectangle 108 108 "solid" "Navajo White")200 200
                          (rectangle 400 400 "solid" "transparent")))))))))

;PIERNAS7: Se de define la pierna de 108px 170px, color Dark Violet y detalles
(define PIERNAS7(place-image(rectangle 15 12 "solid" "Dark Magenta")225 245
               (place-image(rectangle 10 20 "solid" "Dark Magenta")215 260
               (place-image(rectangle 10 20 "solid" "Dark Magenta")235 260
               (place-image(rectangle 15 12 "solid" "Dark Magenta")172 245
               (place-image(rectangle 10 20 "solid" "Dark Magenta")183 260
               (place-image(rectangle 10 20 "solid" "Dark Magenta")160 260
               (place-image(rectangle 15 15 "solid" "Gold")218 175
               (place-image(rectangle 15 15 "solid" "Gold")182 175
               (place-image(rectangle 25 10 "solid" "Gold")200 186
               (place-image(rectangle 25 14 "solid" "Yellow")200 175
               (place-image(rectangle 15 15 "solid" "Gold")247 175
               (place-image(rectangle 15 15 "solid" "Gold")153 175
               (place-image(rectangle 25 10 "solid" "Dark Magenta")175 255
               (place-image(rectangle 25 10 "solid" "Dark Magenta")228 255
               (place-image(rectangle 108 170 "solid" "Dark Violet")200 250
                           (rectangle 400 400 "solid" "transparent")))))))))))))))))

;BRAZO;BRAZO: Se define el brazo de 50px 150px color Dark Salmon, y detalles
(define BRAZO7(place-image(rectangle 20 10 "solid" "Light Slate Gray")125 292
              (place-image(rectangle 50 38 "solid" "white")140 278
              (place-image(rectangle 12 12 "solid" "Dark Salmon")140 248
              (place-image(rectangle 30 12 "solid" "Dark Salmon")145 163
              (place-image(rectangle 12 75 "solid" "Dark Salmon")125 205
              (place-image(rectangle 50 150 "solid" "Navajo White")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))
;BRAZO;BRAZO: Se define el brazo de 50px 150px color Dark Salmon, y detalles
(define BRAZO77(place-image(rectangle 20 10 "solid" "Light Slate Gray")155 292
              (place-image(rectangle 50 38 "solid" "white")140 278
              (place-image(rectangle 12 12 "solid" "Dark Salmon")142 248
              (place-image(rectangle 30 12 "solid" "Dark Salmon")135 163
              (place-image(rectangle 12 75 "solid" "Dark Salmon")155 205
              (place-image(rectangle 50 150 "solid" "Navajo White")140 218
                          (rectangle 400 400 "solid" "transparent"))))))))

;CURPO: Se define el torso del cuerpo de 108px 120px, de color Navajo White y detalles
(define CUERPO7(place-image(rectangle 24 28 "solid" "Dark Salmon")200 168
              (place-image(rectangle 8 20 "solid" "Dark Salmon")250 180
              (place-image(rectangle 40 9 "solid" "Dark Salmon")230 150
              (place-image(rectangle 40 9 "solid" "Dark Salmon")170 150
              (place-image(rectangle 8 20 "solid" "Dark Salmon")153 180
              (place-image(rectangle 40 10 "solid" "Dark Salmon")230 185
              (place-image(rectangle 40 10 "solid" "Dark Salmon")170 185
              (place-image(rectangle 10 65 "solid" "Dark Salmon")230 220
              (place-image(rectangle 10 65 "solid" "Dark Salmon")170 220
              (place-image(rectangle 50 10 "solid" "Dark Salmon")200 210
              (place-image(rectangle 50 10 "solid" "Dark Salmon")200 233
              (place-image(rectangle 50 12 "solid" "Dark Salmon")200 257
              (place-image(rectangle 24 60 "solid" "Dark Salmon")200 222
              (place-image(rectangle 108 120 "solid" "Navajo White")200 203
                          (rectangle 400 400 "solid" "transparent"))))))))))))))))

;PIES: Se define los pies  de 180px 50px, color white
(define PIES7(place-image(line 00 38 "Cornflower Blue")100 100
            (place-image(rectangle 108 10 "solid" "Light Slate Gray")100 115            
            (place-image(rectangle 108 35 "solid" "white")100 100
                        (rectangle 200 200 "solid" "transparent")))))

(define STEVE777
  (place-image CUERPO7 200 200
  (place-image CABEZA7 200 100
  (place-image PIES7 200 415            
  (place-image PIERNAS7 200 295
  (place-image BRAZO7 181 200
  (place-image BRAZO77 339 200             
  (rectangle 400 480 "solid" "transparent"))))))))



(define PX (above STEVEBE STEVE2 STEVE3 STEVE4 STEVE5 STEVE6 STEVE777))

;(run-movie 3 (list STEVEBE STEVE2 STEVE3 STEVE4 STEVE5 STEVE6 STEVE777))


;----------------------------------------


; ARMADURAS


;----------------------------------------


;-----------------------

;DIAMANTE

;-----------------------


;CASCO-DIAMANTE






;REMERA-DIAMANTE (D2)
(define D2  (place-image CUERPO6 200 200
            (place-image BRAZO6 181 200
            (place-image BRAZO66 339 200
            (rectangle 400 400 "solid" "transparent")))))



;PANTALON-DIAMANTE






;BOTAS-DIAMANTE (D4)

(define D4 PIES6)

;-----------------------

;HIERRO

;-----------------------


;CASCO-HIERRO





;REMERA-HIERRO (H2)
(define H2 (place-image CUERPO4 200 200
           (place-image BRAZO4  181 200
           (place-image BRAZO44 339 200
           (rectangle 400 400 "solid" "transparent")))))



;PANTALON-HIERRO (H3)
;
(define H3 (place-image PIERNAS6 200 295
           (rectangle 400 400 "solid" "transparent")))


;BOTAS-HIERRO (H4)
;
(define H4 PIES4)



;-----------------------

;CUERO

;-----------------------


;CASCO-CUERO




;REMERA-CUERO (C2)
(define C2     (place-image CUERPO3 200 200
               (place-image BRAZO3 181 200
               (place-image BRAZO33 339 200             
               (rectangle 400 400 "solid" "transparent")))))

;PANTALON-CUERO (C3)
(define C3     (place-image PIERNAS3 200 295
               (rectangle 400 400 "solid" "transparent")))


;BOTAS-CUERO



;----------------------------------------


; fabrica de personajes.


;----------------------------------------

;(remera? r) String -> Image   (REMERAS)
;  recibe que tipo de remera quiere: diamante, cuero o hierro.
; H2 , C2 , D2
;
(define (remera? r) (cond [(equal? r H2) (place-image H2 200 200 STEVE2)]
                          [(equal? r C2) (place-image C2 200 200 STEVE2)]
                          [(equal? r D2) (place-image D2 200 200 STEVE2)]
                          [else "no se asigno ninguna remera."]))


;(pantalon? r) String -> Image   (PANTALON)
; recibe que tipo de pantalon quiere: diamante, cuero o hierro.
; C3 , H3
;
(define (pantalon? p) (cond [(equal? p C3) (place-image C3 300 200 STEVE2)]
                            [(equal? p H3) (place-image H3 300 200 STEVE2)]))



;(botas? r) String -> Image   (BOTAS)
; recibe un tipo de bota: diamante, cuero o hierro.
; H4 , D4
;
(define (botas? b) (cond [(equal? b H4) (place-image H4 200 410 STEVE2)]
                         [(equal? b D4) (place-image D4 200 410 STEVE2)]))





;(fabrica-steve r p) String String -> Image 
;
;CASCO 1
;REMERA 2
;PANTALON 3
;BOTAS 4

(define (fabrica-steve r p b) (place-image b 200 410
                              (place-image r 200 200
                              (place-image p 200 200 STEVE2))))






















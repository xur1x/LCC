from random import *

# a = random()

# random() Genera un número aleatorio entre 0 y 1
# randint(x,y) Genera un número entero aleatorio entre x e y, incluyendo ambos
# randrange(x) Genera un número entero aleatorio entre 0 y x-1

# 1) Simule lanzamientos de un dado. Muestre el resultado en cada intento y finalice cuando
# salga el número 6. También añada cuantas veces se lanzó el dado.

# def dados():
#     cont = 0
#     tirar = int(input("Ingrese 1 para tirar o 2 para salir: "))

#     while (tirar != 2):

#         if (tirar == 1):
#             cont += 1
#             print(randint(1,6))

#         tirar = int(input("Ingrese 1 para tirar o 2 para salir: "))

#     print("Se tiro el dado ", cont, "veces.")

# dados()


# 3) Simule n lanzamientos de un dado en un juego con las siguientes reglas: si sale 6 gana
# 4 pesos; si sale 3 gana 1 dólar; si sale 1 sigue jugando y si sale 2, 4 o 5 pierde 2 pesos.
# Muestre los valores que salen y el resultado final del juego.


def dados():
    cont = 0
    pesos = 0
    usd = 0
    tirar = int(input("Ingrese 1 para tirar o 2 para salir: "))

    while (tirar != 2):
        valor = randint(1,6)

        if (tirar == 1):
            cont += 1
            print(valor)
            
            if (valor == 6):
                pesos = pesos + 4
            if (valor == 3):
                usd = usd + 1
            if (valor == 2 or valor == 4 or valor == 5):
                pesos = pesos - 2

        tirar = int(input("Ingrese 1 para tirar o 2 para salir: "))

    print("Se tiro el dado ", cont, "veces.")
    print("Se obtuvo ", pesos, "pesos.")
    print("Se obtuvo ", usd, "usd.")

dados()
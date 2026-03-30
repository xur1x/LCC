# Escriba una función que le pida al usuario que ingrese un número positivo. Si el
# usuario ingresa cualquier cosa que no sea lo pedido se le debe informar de su error mediante
# un mensaje y volver a pedirle el número, repitiendo este proceso hasta que ingrese lo pedido.

def ingresar():
    n = int(input("Ingrese un numero positivo: "))

    while n < 0:
        n = int(input("Ingrese un numero positivo: "))

ingresar()
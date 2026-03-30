# Ejercicio 9. Realice los siguientes ítems:

# a) Escriba una función suma que reciba dos números y retorne el resultado de la suma de
# ambos.

def suma(a,b):

    return a + b

# b) Escriba una función resta que reciba dos números y retorne el resultado de la resta de
# ambos.


def resta(a,b):

    return a - b

# c) Escriba una función multiplica que reciba dos números y retorne el resultado de la multi-
# plicación de ambos números.

def mult(a,b):
    return a * b

# d) Escriba una función divide que reciba dos números y retorne el resultado de la división
# de ambos números.

def div(a,b):
    return a / b


# Escriba un programa que muestre un mensaje pidiendo que se elija una opción siendo
# las mismas: Luego de elegir la operación debe pedirse el ingreso de dos números y mostrar el resul-
# tado de la operación correspondiente (invocando a la función homónima).

def opera():
    print("---------------------------------")
    print("1 - Suma")
    print("2 - Resta")
    print("3 - Multiplicacion")
    print("4 - Divicion")
    print("5 - Salir")
    print("---------------------------------")

    num0 = int(input("Ingrese un numero del 1 al 4: "))

    num1 = int(input("Ingrese un numero: "))
    num2 = int(input("Ingrese otro numero: "))

    if num0 == 1:
        return suma(num1,num2)
    elif num0 == 2:
        return resta(num1,num2)
    elif num0 == 3:
        return mult(num1,num2)
    elif num0 == 4:
        return div(num1,num2)
    else:
        return opera()

print(opera())


# f) Agregue una opción que sea
# 5. Salir
# de manera que, mientras no se ingrese un 5 el programa siga funcionando repitiendo la
# operatoria anterior.
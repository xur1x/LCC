# Ejercicio 4. Escriba una función que tome una cantidad m de valores que serán ingresados
# por el usuario y, a medida que se ingresa cada número, muestre el factorial del mismo. El valor
# de m es ingresado inicialmente por el usuario.

def factorial(num):

# Consideramos los numero naturales y el cero

# factorial: Number -> Number
# Dado un numero n, calcula su factorial

# factorial(7) == 5040
# factorial(0) == 1
# factorial(1) == 1

    if num == 0:
        return 1
    elif num > 0:
        return num * factorial(num - 1)
    
# TESTING
def test_factorial():
    assert factorial(7) == 5040
    assert factorial(0) == 1
    assert factorial(1) == 1


def factorialfor(n):
    factorial = 1
    for i in range(1,n+1):
        factorial = factorial * i
    print(factorial)


def factorialwhile(n):
    cont = 1
    x = 1

    while x <= n:

        if n == 0:
            return 1
        else:
            cont = cont * x
            x = x + 1

    return cont

def func():
    num1 = int(input("Ingrese un numero: "))

    for i in range(0,num1):

        num = int(input("Ingrese un numero: "))
        rta = factorial(num)

        print(rta)


# func()
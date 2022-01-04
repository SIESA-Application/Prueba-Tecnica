



#Función para imprimir si es un número entero positivo y de ser así sus divisiores y si es o no número perfecto

def imprimirDivisoresPerfecto(enteroPositivo):
    if (enteroPositivo <= 0):
        print('\n******************\nEl número ' + str(enteroPositivo) + ' NO es un entero Positivo\n**********************\n')
    else:
        
        print('\n******************\nLos divisores de ' + str(enteroPositivo) + ', son:\n')
        sumatoria = 0
        for i in range(1, enteroPositivo):
           
            if (enteroPositivo % i == 0):
                sumatoria = sumatoria + i
                print(i)
        print('\n')
        if sumatoria == enteroPositivo:
            print('El número ' + str(enteroPositivo) + ' es Perfecto\n\n**********************\n')
        else:
            print('El número ' + str(enteroPositivo) + ' NO es Perfecto\n\n********************\n')


#Función que recibe una lista de n números e imprime si es entero positivo, sus divisores y si es o no número perfecto
def listaPerfectos(numeros):
    for numero in numeros:
        imprimirDivisoresPerfecto(numero)


#Función para pedir los n números por consola.
def main():
    listaConsola = []
    n = int(input('Ingrese el número de enteros que va a ingresar: \n'))
    for numero in range(n):
        listaConsola.append(int(input('Ingrese el ' + str(numero+1) + '° número: \t')))



    listaPerfectos(listaConsola)


#Iniciamos el programa para pedir los n números por consola.
main() 



#Prueba de la función sin necesidad de consola, Quitar comentario para probar:
""" listaPrueba = [-3, 6, 5, 28, 100]

listaPerfectos(listaPrueba)
 """
 
#Resultado Esperado:
'''
******************
El número -3 NO es un entero Positivo
**********************


******************
Los divisores de 6, son:

1
2
3


El número 6 es Perfecto

**********************


******************
Los divisores de 5, son:

1


El número 5 NO es Perfecto

********************


******************
Los divisores de 28, son:

1
2
4
7
14


El número 28 es Perfecto

**********************


******************
Los divisores de 100, son:

1
2
4
10
20
25
50


El número 100 NO es Perfecto

********************'''


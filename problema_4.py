""" 4- Escriba un algoritmo que imprima los números del 1 al 100. Pero para los múltiplos
de 3 imprima "Fizz" en lugar del número y para los múltiplos de 5 imprima "Buzz". Para los
números que son múltiplos de ambos imprima "FizzBuzz". """


for i in range(1, 100):
    if (i % 3 == 0 and i % 5 == 0):
        print('FizzBuzz')
    elif (i % 3 == 0):
        print('Fizz')
    elif  (i % 5 == 0):
        print('Buzz')
    else:
        print(i)


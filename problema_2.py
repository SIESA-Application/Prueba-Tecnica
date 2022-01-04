""" 2- Realice un algoritmo que reciba como parámetro dos números enteros y retorne la
división de ambos números.
 """

def division(dividendo, divisor):
    try:
        return dividendo/divisor
    except:
        return 'Indefinido'



#Ejemplo, 68/45 = 1.511111111111111
print(division(68, 45))


#Ejemplo, 345/0 = 'Indefinido'
print(division(345, 0))
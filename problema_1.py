""" 1- ¿Cuál es el resultado de ejecutar el siguiente pseudo-código con el valor “5”?
 """

def metodoQueHaceAlgo(valor): 

    if (valor < 3) :
        return valor
    
    return metodoQueHaceAlgo(valor-1) * metodoQueHaceAlgo(valor-2)


print(metodoQueHaceAlgo(5))

# Respuesta: 8
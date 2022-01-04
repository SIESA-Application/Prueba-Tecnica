def metodoQueHaceAlgo(valor): 

    if (valor < 3) :
        return valor
    
    return metodoQueHaceAlgo(valor-1) * metodoQueHaceAlgo(valor-2)


print(metodoQueHaceAlgo(5))

# Respuesta: 8
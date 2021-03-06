
# Esercizio 3

# Supponiamo che il colore degli occhi di una persona sia 
# determinato in base ad una coppia di geni e che �d� 
# rappresenti il gene dominante mentre �r� il gene recessivo. 

# Pertanto una persona con la coppia di geni �dd� ha dominanza pura, 
# una con �rr� ha recessione pura e una con �dr� o �rd� � ibrida.
# Un bambino riceve un gene da ognuno dei genitori.

# Se rispetto al colore degli occhi i due genitori �ibridi� hanno nFigli (ex: nFigli=4) figli, 

# a) Qual � la probabilit� che esattamente numDom (ex: numDom=3)
#    dei nFigli (ex: nFigli=4) figli abbiano almeno 1 gene dominante?




#---------------------------------------------------------

# PARAMETRI 

# nFigli = numero totale di figli dei due genitori ibridi
# numDom = numero di figli che vogliamo 
#          abbiano almeno un gene domaniante


nFigli <- 4

numDom <- 3

#------------------------------------------

# PROBABILITA'

# pdd = probabilit� che un figlio nasca con entrambi i geni dominanti
# pdr = probabilit� che un figlio nasca con un gene dominante e uno recessivo
# prr = probabilit� che un figlio nasca con entrambi i geni recessivi

# pd = probabilit� che un figlio nasca con almeno un gene dominante


pdd <- 1/4
pdr <- 1/2
prr <- 1/4

pd <- pdd+pdr


#------------------------------------------

# SOLUZIONE

# a) probabilit� che esattamente numDom (ex: numDom=3) figli su 
#    nFigli (ex: nFigli=4) abbiano almeno un gene dominante

# uso la funzione di densit� di probabilit� della Binomiale

out <- dbinom(numDom, nFigli, prob=pd)



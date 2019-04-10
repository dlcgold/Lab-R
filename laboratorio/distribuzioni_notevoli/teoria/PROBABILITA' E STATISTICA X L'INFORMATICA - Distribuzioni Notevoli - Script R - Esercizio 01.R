
# Esercizio 1

# Tot (ex: tot = 4) monete bilanciate vengono lanciate. 

# Assumendo l'indipendenza dei risultati, 
# qual'è la probabilità di ottenere nT (ex: nT=2) testa e nC (ex: nC=2) croce.
 


#---------------------------------------------------------

# PARAMETRI 

# nT = numero di risultati testa
# nC = numero di risultati croce
# tot = numero totale di lanci effettuati 

nT <- 2
nC <- 2

tot <- nT+nC

#------------------------------------------


# SOLUZIONE

# a) probabilità di ottenere nT testa e nC croce

# uso la funzione di densità di probabilità della Binomiale

out <- dbinom(nT, tot, prob=1/2)
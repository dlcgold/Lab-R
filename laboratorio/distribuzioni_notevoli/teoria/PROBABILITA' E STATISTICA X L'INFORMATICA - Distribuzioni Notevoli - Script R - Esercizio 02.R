
# Esercizio 2

# E' noto che gli item prodotti da una macchina utensile saranno difettosi 
# con probabilità pDiff (ex: pDiff=0.1). 


# Qual è la probabilità che in un campione di ntot (ex: ntot=3) items 
# al più nDiff (ex: nDiff=1) sia difettoso?

 

#---------------------------------------------------------

# PARAMETRI 

# pDIff = probabiltà che un item sia difettoso
# ntot = numero di item nel campione considerato
# nDiff = numero di item difettosi


pDiff <- 0.1

ntot <- 3

nDiff <- 1

#------------------------------------------


# SOLUZIONE

# a) probabilità che in un campione di ntot item 
#    al più nDiff siano difettosi

# uso la funzione di ripartizione della Binomiale

out <- pbinom(nDiff, ntot, prob=pDiff)


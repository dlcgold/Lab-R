
# Esercizio 2

# E' noto che gli item prodotti da una macchina utensile saranno difettosi 
# con probabilit� pDiff (ex: pDiff=0.1). 


# Qual � la probabilit� che in un campione di ntot (ex: ntot=3) items 
# al pi� nDiff (ex: nDiff=1) sia difettoso?

 

#---------------------------------------------------------

# PARAMETRI 

# pDIff = probabilt� che un item sia difettoso
# ntot = numero di item nel campione considerato
# nDiff = numero di item difettosi


pDiff <- 0.1

ntot <- 3

nDiff <- 1

#------------------------------------------


# SOLUZIONE

# a) probabilit� che in un campione di ntot item 
#    al pi� nDiff siano difettosi

# uso la funzione di ripartizione della Binomiale

out <- pbinom(nDiff, ntot, prob=pDiff)


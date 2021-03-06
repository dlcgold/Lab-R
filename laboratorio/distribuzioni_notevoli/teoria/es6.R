
# Esercizio 6

# Un'azienda produce dischetti, la probabilit� che un dischetto sia 
# difettoso � pari a pDiff (ex: pDiff=0.01). 

# L'azienda vende i dischetti in confezioni da n (ex: n=10) e 
# rimborsa l'acquirente se pi� di x (ex: x=1) dischetti sono difettosi. 


# a) Quale proporzione delle confezioni sar� restituita? 


# b) Se un acquirente acquista k (ex: k=3) scatole, 
#    qual � la probabilit� che ne restituisca esattamente una? 


#---------------------------------------------------------

# PARAMETRI 

# pDiff = probabilit� che un dischetto sia difettoso
# n = numero di dischetti per confezione
# x = numero massimo di dischetti affinch� la confezione non sia considerata difettosa

# k = numero di scatole acquistate


pDiff <- 0.01

n <- 10

x <- 1

k <- 3

#------------------------------------------

# SOLUZIONE



# a) Quale proporzione delle confezioni sar� restituita? 

# calcoliamo la probabilit� che una confezione sia difettosa


# 1) probabilit� che al pi� siano difettosi due dischetti
tmp <- pbinom(1,10,prob=pDiff)

# 2) probabilit� che pi� di due dischi siano difettosi
out1 <- 1-tmp 



#-------------------------------------


# b) Se un acquirente acquista k (ex: k=3) scatole, 
#    qual � la probabilit� che ne restituisca esattamente una? 

# out1 = probabilit� che una scatola sia difettosa
# usiamo la funzione di dnesit� di probabilit� della Binomiale

out2 <- dbinom(1,k,prob=out1)

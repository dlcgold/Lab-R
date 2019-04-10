
# Esercizio 6

# Un'azienda produce dischetti, la probabilità che un dischetto sia 
# difettoso è pari a pDiff (ex: pDiff=0.01). 

# L'azienda vende i dischetti in confezioni da n (ex: n=10) e 
# rimborsa l'acquirente se più di x (ex: x=1) dischetti sono difettosi. 


# a) Quale proporzione delle confezioni sarà restituita? 


# b) Se un acquirente acquista k (ex: k=3) scatole, 
#    qual è la probabilità che ne restituisca esattamente una? 


#---------------------------------------------------------

# PARAMETRI 

# pDiff = probabilità che un dischetto sia difettoso
# n = numero di dischetti per confezione
# x = numero massimo di dischetti affinchè la confezione non sia considerata difettosa

# k = numero di scatole acquistate


pDiff <- 0.01

n <- 10

x <- 1

k <- 3

#------------------------------------------

# SOLUZIONE



# a) Quale proporzione delle confezioni sarà restituita? 

# calcoliamo la probabilità che una confezione sia difettosa


# 1) probabilità che al più siano difettosi due dischetti
tmp <- pbinom(1,10,prob=pDiff)

# 2) probabilità che più di due dischi siano difettosi
out1 <- 1-tmp 



#-------------------------------------


# b) Se un acquirente acquista k (ex: k=3) scatole, 
#    qual è la probabilità che ne restituisca esattamente una? 

# out1 = probabilità che una scatola sia difettosa
# usiamo la funzione di dnesità di probabilità della Binomiale

out2 <- dbinom(1,k,prob=out1)

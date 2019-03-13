# Esercizio 17

# Si supponga di estrarre contemporaneamente k (ex: k=13) carte da un mazzo di 52 
# (13 carte di cuori, 13 di picche, 13 di fiori, 13 di quadri). 

# Si calcoli la probabilità che le carte così estratte contengano:
  
# a) il tre di cuori;


# b) b1 (ex: b1=1) carte di quadri;


# c) c1 (ex: c1=3) carte di picche e c2 (ex: c2=5) carte di quadri;


# d) solo d1 (ex: d1=3) figure.


#---------------------------------------------------------


#importo la libreria prob
library(prob)



# PARAMETRI 
# k = numero di carte estartte dal mazzo
# n = numero di carte nel mazzo
# b1 = numero di carte di quadri che si vuole estrarre al punto b
# c1 = numero di carte di picche che si vuole etrarre nel punto c
# c2 = numero di carte di quadri che si vuole etrarre nel punto c
# d1 = numero di figure che si vuole estrarre nel punto d

k <- 13
n <- 52

b1 <- 1
c1 <- 3
c2 <- 5

d1 <- 3


#------------------------------------------

#SOLUZIONE

# a) probabilità di estrarre il tre di cuori

#casi possibili: n° possibili combinazioni nell'estrazione di k carte
den1 <- choose(n, k)

#casi favorevoli: il -1 è dovuto all'ipotesi di aver rimosso la carta di cuori cercata
num1 <- choose(n-1, k-1)

#soluzione:
out1 <- num1/den1


#---------------

#b) b1 carte di quadri

#casi favorevoli: numero di possibili combionazioni di carte in cui:
# b1 -> è il numero di carte di quadri che vogliamo estarre
# k-b1 -> sono carte non di quadri

num2 <- choose(13, b1) * choose(n-13, k-b1)

#soluzione:
out2 <- num2/den1


#----------------

#c) c1 carte di picche e c2 carte di quadri

#casi favorevoli: numero di possibili combionazioni di carte in cui:
# c1 -> sono carte di picche
# c2 -> sono carte di quadri
# n-c1-c2 -> carte nè di quadri, nè di picche

num3 <- choose(13, c1) * choose(13,c2) * choose(n-13-13, k-c1-c2)

out3 <- num3/den1


#----------------

#d) tre carte di picche e cinque carte di quadri

#casi favorevoli: numero di possibili combionazioni di carte in cui:
# d1 -> sono carte figure
# n-d1-> carte non figure
# 3*4 = numero di figure presenti nel mazzo

num4 <- choose(3*4, d1) * choose(n-12, k-d1)

out4 <- num4/den1

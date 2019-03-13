# Esercizio 29

# Un mazzo di carte napoletane costituito da 40 carte suddivise in 4 classi (detti "semi") 
# ciascuna contenente 10 carte numerate. Supponiamo di estrarre "a caso" n carte da un tale mazzo.

# a) Calcolare la probabilità di estrarre n7 (ex: n7=4) "sette".

# b) Calcolare la probabilità di estrarre al più n6 (ex: n6=2) "sei".

# c) Calcolare la probabilità di estrarre "n7 sette" e al più n6 "sei".


#---------------------------------------------------------

#importo la libreria prob
library(prob)


# PARAMETRI 

# n =  numero di carte estratte dal mazzo

# n7 = numero di sette nel punto a) e c)

# n6 = numero di sei nel punto b) e c)


n <- 8

n7 <- 4

n6 <- 2

# -----------------------------


#SOLUZIONE

# a) probabilità di estrarre n7 sette


# possibili combinazioni di n elementi estratti dal mazzo di 40 carte

CasiPoss <- choose(40,8)


# numero di passibili combinazioni in cui n7 sono carte di "sette"
# mentre (n - n7) carte non sono "sette"

CasiFavA <- choose(4, n7)*choose(40-4, n-n7) 

# soluzione:

out1 <- CasiFavA/CasiPoss 


#-------------------------------

# b) Calcolare la probabilità di estrarre al più n6 "sei"

# p conterrà la probabilità di estrarre "i" n6

p <- NULL

# per ogni i -> p[i] = probabilità di estrarre 'i' carte di "sei"
for (i in 0:n6){
  p[i+1] = (choose(4,i)*choose(40-4, n-i) ) / CasiPoss
}

# sommo le probabilità sopra generate
out2 <- sum(p)


#-------------------------------


# c) Calcolare la probabilità di estrarre n7 "sette" e n6 "sei"

# dobbiamo calcolare le probabilità congiunte:

# per ogni i -> pA[i] = probabilità di estrarre 'i' carte di "sei" e n7 carte di "sette"
pA <- NULL

# pA contiene, per ogni 'i', la probabilità di esatrarre n7 
# carte di "sette" ed i carte di "sei"

for (i in 0:n6){
  pA[i+1] = (choose(4,n7)*choose(4,i)*choose(40-4-4, n-i-n7) ) / CasiPoss
}

out3 <- sum(pA)


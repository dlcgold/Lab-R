
# Esercizio 15:


# Il numero «X» di telefonate ricevute nell'intervallo di tempo [0, t0] 
# è una variabile aleatoria distribuita secondo una distribuzione di Poisson con parametro 
# lambda = t0.

# Calcolare la probabilità P(k1???X???k2)(ex: P(2???X???4)) di ricevere da k1 (ex: k1=2) a 
# k2 (ex: k2=4) telefonate (k1 e k2 inclusi) entro l'istante t0 (ex: t0=1).


#---------------------------------------------------------

# PARAMETRI 

# k1 = estremo inferiore dell'intervallo di cui vogliamo calcolare la probabilità
# k2 = estremo superiore dell'intervallo di cui vogliamo calcolare la probabilità
# t0 = estremo superiore dell'intervallo di tempo considerato

k1 <- 2
k2 <- 4

t0 <- 1


#------------------------------------------


# SOLUZIONE 


# a) Calcolare la probabilità P(k1???X???k2)(ex: P(2???X???4)) di ricevere da k1 (ex: k1=2) a 
# k2 (ex: k2=4) telefonate (k1 e k2 inclusi) entro l'istante t0 (ex: t0=1).


# useremo la funzione di densità di probabilità della Poisson con
# parametro lambda = t0

out=0

for (i in (k1 : k2)){
  out = out + dpois(i ,t0)  
}

out
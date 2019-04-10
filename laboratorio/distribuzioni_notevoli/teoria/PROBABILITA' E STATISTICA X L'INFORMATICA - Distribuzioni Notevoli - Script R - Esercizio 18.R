
# Esercizio 18:

# Il "Crazy Boat" è un battello a due motori utilizzato per le crociere sul Tamigi. 

# I due motori lavorano indipendentemente e il numero di piccoli guasti in una 
# singola crociera è modellabile tramite una v.a. X di Poisson di parametro lambda1 (ex: lambda1=1) 
# per il primo motore, e da una v.a. Y di Poisson di parametro lambda1 (ex: lambda1=2)
# per il secondo.

# a) Qual è la distribuzione della v.a. X+Y?

# b) Calcolare la probabilità che non avvenga alcun guasto in una data crociera

# c) Partono k (ex: k=10) modelli identici "Crazy Boat"; 
#    calcolare la probabilità che almeno m (ex:m=2) battelli concludano la crociera senza guasti



#---------------------------------------------------------


# PARAMETRI 

# lambda1 = valore del parametro lambda legato alla distribuzione della variabile X
# lambda2 = valore del parametro lambda legato alla distribuzione della variabile Y
# k = numero di modelli di "Crazy Boat" che partono nel punto c)
# m = numero minimo di battelli "Crazy Boat"che devono concludere il viaggio senza guasti,
#     secondo quanto indicato nel punto c)

lambda1 <- 1
lambda2 <- 2

k <- 10

m <- 2

#------------------------------------------

# SOLUZIONE

# a) Qual è la distribuzione della v.a. X+Y?

out1 <- c('X+Y è distribuita secondo una Poisson con parametro lambda=',lambda1+lambda2)


# --------------------

# b) Calcolare la probabilità che non avvenga alcun guasto in una data crociera

# P(X==0):
pX0 <- dpois(0, lambda1)

# P(Y==0):
pY0 <- dpois(0, lambda2)

# # P(X==0 AND Y==0)
out2 <- pX0 * pY0


# --------------------


# c) Partono k (ex: k=10) modelli identici "Crazy Boat"; 
#    calcolare la probabilità che almeno m (ex:m=2) battelli concludano la crociera senza guasti

# definiamo una nuova variabile casuale S ="numero di battelli che concludono la crocera", 
# distribuita secondo una Binomiale con parametro p=out2

# P(S>=m)

out3 <- 1 - pbinom(m-1, k, prob=out2 )
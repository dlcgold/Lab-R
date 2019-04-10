
# Esercizio 17:


# In una certa provincia montuosa si può supporre che il numero X di frane 
# al mese sia una variabile aleatoria con la legge di Poisson di parametro lambda 
# (ex: lambda???= 2.3)

# a) Calcolare la probabilità che ci siano almeno a1 (ex: a1=2) frane in un dato mese.

# b) Quanto dovrebbe valere il parametro lambda affinchè la probabilità che 
#    in un mese non ci siano frane sia superiore a p (ex:p=1/2)?


#---------------------------------------------------------


# PARAMETRI 

# lambda = parametro della distribuzione (Poisson) di x
# a1 = numero di frane di cui vogliamo calcolare la probabilità nel punto a)
# p = probabilità indicata nel punto b)

lambda <- 2.3

a1 <- 2

p <- 1/2


#------------------------------------------


# SOLUZIONE


# a) Calcolare la probabilità che ci siano almeno a1 (ex: a1=2) frane in un dato mese.

# probabilità che ci siano meno di a1 frane
# -1 serve per escludere l'elemento a1
tmpA <- ppois(a1-1, lambda)


# probabilità che ci siano almeno a1 frane
out1 <- 1 - tmpA


#------------------------------------------

# b) Quanto dovrebbe valere il parametro lambda affinchè la probabilità che 
#    in un mese non ci siano frane sia superiore a p (ex:p=1/2)?

# utilizzo la funzione di densità di probabilità della Poisson per stimare 
# il parametro richiesto

lambdaB = log(1/p)

cat( 'lambda <', lambdaB) 


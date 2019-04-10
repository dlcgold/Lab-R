
# Esercizio 7:


# Si supponga che la probabilità che un prodotto costruito da una macchina 
# sia difettoso è pari a pDiff ( ex: pDiff=0.1). 

# Si trovi la probabilità che un campione di n (ex: n=10) prodotti 
# contenga al più k (ex: k=1) prodotti difettosi. 




#---------------------------------------------------------

# PARAMETRI 

pDiff <-0.1

n <-10

k <- 1

#------------------------------------------


# SOLUZIONE 1 ~ usando la binomiale

# Si trovi la probabilità che un campione di n (ex: n=10) prodotti 
# contenga al più k (ex: k=1) prodotti difettosi. 

outBin <- pbinom(k,n, prob=pDiff)


#-----------------------------------------

# SOLUZIONE 2 ~ usando la Poisson

# Si trovi la probabilità che un campione di n (ex: n=10) prodotti 
# contenga al più k (ex: k=1) prodotti difettosi. 


# calcolo della lambda
lambda <- n*pDiff
  
# calcolo della probabilità richiesta
outPois <- ppois(k, lambda)

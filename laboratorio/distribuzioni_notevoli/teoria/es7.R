
# Esercizio 7:


# Si supponga che la probabilit� che un prodotto costruito da una macchina 
# sia difettoso � pari a pDiff ( ex: pDiff=0.1). 

# Si trovi la probabilit� che un campione di n (ex: n=10) prodotti 
# contenga al pi� k (ex: k=1) prodotti difettosi. 




#---------------------------------------------------------

# PARAMETRI 

pDiff <-0.1

n <-10

k <- 1

#------------------------------------------


# SOLUZIONE 1 ~ usando la binomiale

# Si trovi la probabilit� che un campione di n (ex: n=10) prodotti 
# contenga al pi� k (ex: k=1) prodotti difettosi. 

outBin <- pbinom(k,n, prob=pDiff)


#-----------------------------------------

# SOLUZIONE 2 ~ usando la Poisson

# Si trovi la probabilit� che un campione di n (ex: n=10) prodotti 
# contenga al pi� k (ex: k=1) prodotti difettosi. 


# calcolo della lambda
lambda <- n*pDiff
  
# calcolo della probabilit� richiesta
outPois <- ppois(k, lambda)

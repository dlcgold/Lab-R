
# Esercizio 13:


# Da un mazzo di 52 carte (13 di picche, 13 di cuori, 13 di fiori e 13 di quadri) 
# ne vengono estratte n (ex: n=5) con reinserimento. Si è interessati alla variabile 
# casuale X che descrive il numero di carte di cuori ottenute nelle estrazioni. 


# Determinare:
  
# a) il valore atteso e la varianza della variabile X

# b) la probabilità di estrarre b1 (ex: b1=3) carte di cuori

# c) la probabilità di estrarre almeno c1 (ex: c1=3) carte di cuori

# d) la probabilità di estrarre al più d1 (ex: d1=3) carte di cuori


#---------------------------------------------------------

# PARAMETRI 

# n = numero di carte estratte con reimmisione 
# b1 = numero di carte di cuori richieste nel punto b) dell'esercizio
# c1 = numero di carte di cuori richieste nel punto c) dell'esercizio
# d1 = numero di carte di cuori richieste nel punto d) dell'esercizio
# pHeart = probabilità di estrarre una carta di cuori

n <- 5

b1 <- 3

c1 <- 3

d1 <- 3

pHeart <- 13/52 


#------------------------------------------


# SOLUZIONE 


# a) il valore atteso e la varianza della variabile X

  # calcoliamo le due statistiche usando le formule della Binomiale

  # valore atteso della variabile "numero di carte di cuori estratte"
  mu <- n*pHeart

  # varianza della variabile "numero di carte di cuori estratte"
  sigma2 <- n*pHeart*(1-pHeart)
  
#------------------
  
# b) la probabilità di estrarre b1 (ex: b1=3) carte di cuori
  
  #usiamo la formula di densità di probabilità della Binomiale 
  
  out2 <- dbinom(b1, n, prob=pHeart)
  

#------------------
  
# c) la probabilità di estrarre almeno c1 (ex: c1=3) carte di cuori
  
# usiamo la formula di ripartizione della Binomiale per calcolare la 
# probailità di estrarre meno di c1 carte di cuori 
  
  tmpC <- pbinom(c1-1, n, prob=pHeart)
  
# calcoliamo la probabilità richiesta
  
  out3 <- 1- tmpC
  
  
#------------------
  
# d) la probabilità di estrarre al più d1 (ex: d1=3) carte di cuori
  
# usiamo la formula di ripartizione della Binomiale per calcolare la 
# probailità di estrarre al più d1 carte di cuori 
  
  out4 <- pbinom(d1, n, prob=pHeart)
  

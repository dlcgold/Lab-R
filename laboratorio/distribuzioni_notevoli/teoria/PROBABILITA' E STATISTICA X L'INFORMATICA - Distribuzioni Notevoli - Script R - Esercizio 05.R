
# Esercizio 5:

# In media su un'autostrada si verificano x (ex: x=3) incidenti al giorno.

# Qual è la probabilità che non si verifichino incidenti oggi?



#---------------------------------------------------------

# PARAMETRI 

# x = numero medio di incidenti che avvengono giornalmente in autostrada

 x <- 3
 
# osservazione: Il valore atteso di una variabile aleatoria distribuita 
#       secondo una Poisson è uguale al valore lambda della stessa distribuzione. 
#       Quindi:
 
 lambda <- x 

#------------------------------------------

 
# SOLUZIONE


# Qual è la probabilità che non si verifichino incidenti oggi?
 
# Usiamo la distribuzione di probabilità della Poisson
 
 out <- dpois(0,lambda)

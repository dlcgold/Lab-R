
# Esercizio 4

# Supponiamo che il numero di errori tipografici presenti in una singola
# pagina di un libro sia distribuito secondo una Poisson con parametro lambda (ex:lambda=1) . 

# Si calcoli la probabilità che vi siano almeno x (ex: x=1) errori in una data pagina.




#---------------------------------------------------------

# PARAMETRI 

# lambda = parametro della Poisson
# x = numero di errori in una data pagina

lambda <- 1
x <- 1

#------------------------------------------

# SOLUZIONE

# a) Si calcoli la probabilità che vi siano almeno x (ex: x=1) 
#    errori in una data pagina.

# probabilità che nella pagina ci siano al più x errori
tmp <- ppois(x-1, lambda)

# probabilità che nella pagina ci siano almeno di x errori
out <- 1-tmp
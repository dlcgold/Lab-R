
# Esercizio 16:


# In un dato canale di comunicazione sappiamo che la probabilità di 
# ricevere in modo errato un singolo messaggio è pari a pErr (ex: pErr = 0.01). 

# Sapendo che viene inviata una sequenza di n (ex:n=150) messaggi, e che 
# i messaggi trasmessi sono stocasticamente indipendenti tra loro, 
# ci si chiede

# Quale sia la probabilità che k (ex:k=2) dei messaggi ricevuti siano errati.



#---------------------------------------------------------


# PARAMETRI 

# pErr = probabilità che il messaggio venga ricevuto in modo errato
# n = numero di messaggi inviati
# k = numero di messaggi di cui si vuole calcolare la probabilità di ricevere 
#     errati

pErr <- 0.01

n <- 150

k <- 2



#------------------------------------------


# SOLUZIONE


# Quale sia la probabilità che k (ex:k=2) dei messaggi ricevuti siano errati.

# uso la funzione di densità di probabilità della Binomiale

out <- dbinom(k, n, prob=pErr)
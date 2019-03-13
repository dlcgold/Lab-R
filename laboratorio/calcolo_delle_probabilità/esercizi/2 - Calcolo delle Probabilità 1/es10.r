# Un'urna contiene 'b' (ex: b=3) biglie bianche e n (ex:n=2) biglie nere. 


# a) Calcolare la probabilità che estraendo in successione 
# (senza reimbussolamento) 3 biglie almeno una sia 'k' (ex: nera).




# b) Ripetere il punto precedente supponendo il reimbussolamento.



#---------------------------------------------------------


#importo la libreria prob
library(prob)



# PARAMETRI 
#b = num palline bianche nell'urna
#n = num palline nere nell'urna
#x = num di palline che estraiamo (ve volessimo aumentare il numero 
#    di palline estratte dovremmo modificare questo valore)
#k = colore di cui vogliamo calcolare la probabilità di estrarre almeno una pallina

b <- 3
n <- 2

x <- 3
k <- 'n'

#DATI

# inizializzazione dell'array relativo all'urna
y <- NULL


# Cicli che inseriscono elementi nell'urna

for (i in 1 : b){
  y <- append(y, "b");
}

for (i in 1 : n){
  y <- append(y, "n");
}




#------------------------------------------

#PROCEDIMENTO:

# a) Calcolatre la probabilità che estarendo in succesione (senza reimbussolamento)
# x biglie almeno una sia k

#CREAZIONE DELLO SPAZIO DELLE PROBABILITà

# a-1) Creazione dello "Spazio degli eventi relativo all'urna"

urn1 = urnsamples(y, x, replace = FALSE, ordered=TRUE)

numel = nrow(urn1)

# a-2) Generiamo un array indicante, in ogni posizione "i", la probabilità di 
# verificarsi dell'i-esimo evento dello "Spazio degli eventi" sopra definito.
# numel = numero degli elementi nell'urna

p <- rep(1/numel, times=numel)


# creazione dello spazio di probabilità

space_urn1 = probspace(urn1, p)



#SOLUZIONE: Probabilità che entrambe le palline estratte siano del tipo "k" 

#---> se volessimo estrarre un numero di palline maggiore di 3 dovremmo aggiungere
#nuove condizioni Xi == k come secondo argomento della funzione Prob.

#ad esempio se volessimo estrarre 4 palline la funzione prob diventerebbe:
#out <- Prob(space_urn1, X1==k | X2 == k | X3 == k | X4==k)

out <- Prob(space_urn1, X1==k | X2 == k | X3 == k)








# b) Ripetere il punto precedente supponendo il reimbussolamento

#CREAZIONE DELLO SPAZIO DELLE PROBABILITà

# b-1) Creazione dello "Spazio degli eventi relativo all'urna"

urn2 = urnsamples(y, x, replace = TRUE, ordered=TRUE)

numel2 = nrow(urn2)

# a-2) Generiamo un array indicante, in ogni posizione "i", la probabilità di 
# verificarsi dell'i-esimo evento dello "Spazio degli eventi" sopra definito.
# numel = numero degli elementi nell'urna

p2 <- rep(1/numel2, times=numel2)


# creazione dello spazio di probabilità

space_urn2 = probspace(urn2, p2)



#SOLUZIONE: Probabilità che entrambe le palline estratte siano del tipo "k" 
#---> se volessimo estrarre un numero di palline maggiore di 3 dovremmo aggiungere
#nuove condizioni Xi == k come secondo argomento della funzione Prob.

#ad esempio se volessimo estrarre 4 palline la funzione prob diventerebbe:
#out2 <- Prob(space_urn2, X1==k | X2 == k | X3 == k | X4== k)

out2 <- Prob(space_urn2, X1==k | X2 == k | X3 == k)




# Esercizio 5: Viene estratta una pallina da un'urna che contiene n (ex: n=4) 
# palline numerate da 1 a n.
# Siano E ={1,2}, F={1,3}, e G={1,4}.

# Calcolare 

# a) P(E)

# b) P(F intersection G)

# c) P(E intersection F intersection G)

#---------------------------------------------------------


#importo la libreria prob
library(prob)



# PARAMETRI 
#E = primo sottoinsieme di palline dell'urna
#F = secondo sottoinsieme di palline dell'urna
#G = terzo sottoinsieme di palline dell'urna

#n = numero di palline contenute nell'urna

E <- c(1,2)
F <- c(1,3)

G <- c(1,4)

n <- 4

#DATI

# definizione dell'urna

urn= c(1:n)

#------------------------------------------

#PROCEDIMENTO:

#CREAZIONE DELLO SPAZIO DELLE PROBABILITà


# 1) Generiamo un array indicante, in ogni posizione "i", la probabilità di 
# verificarsi dell'i-esimo evento dello "Spazio degli eventi" (urn) sopra definito.
# numel = numero degli elementi nell'urna

p <- rep(1/n, times=n)



# 2) creazione dello spazio di probabilità

space_urn = probspace(urn, p)



#SOLUZIONE: 

#a) P(E)

out1 = Prob(space_urn, x %in% E)


#b) P(F intersection G)

# crea un nuovo sottospazio nato dall'intersezione di F e G
FinG = intersect(F,G)

#calcola la probabilità voluta
out2 = Prob(space_urn, x %in% FinG)


#c) P(F intersection G intersection E)

# crea un nuovo sottospazio nato dall'intersezione di F, G e E
FinGinE = intersect(intersect(F,G),E)

#calcola la probabilità voluta
out3 = Prob(space_urn, x %in% FinGinE)

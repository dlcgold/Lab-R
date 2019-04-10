# Esercizio 29

# Consideriamo un mazzo di 40 carte suddivise in 4 classi (detti "semi") 
# ciascuna contenente 10 carte numerate da 1 a 10. Ogni mano servita è 
# formata da n (ex: n=5) carte estratte dal mazzo.

# a) Calcolare la probabilità di avere una mano formata dai numeri da 
#    1 a n (ex: con n=5 -> mano="1","2", "3", "4", "5")


# b) Calcolare la probabilità di ricevere una mano che contiene n carte con numero
#    diverso


#---------------------------------------------------------

#importo la libreria prob
library(prob)


# PARAMETRI 

# n = numero di carte con cui è formata una mano


n <- 5

# -----------------------------


#SOLUZIONE

# a) Calcolare la probabilità di avere una mano formata dai numeri da 
#    1 a n (ex: con n=5 -> mano="1","2", "3", "4", "5")

out1 <- 1;


for (i in n : 1){
  
  # probabilità di estrarre una carta di tipo diverso sapendo che 
  # sono già state estratte 'i' carte tra loro di tipo diverso 
  
  temp <- (4*i/(40-(5-i)))
  
  # calcolo del risultato finale del punto a) in forma ricorsiva
  
  out1 <- out1 * temp

}


# -------------------------------

# b) Calcolare la probabilità di ricevere una mano che contiene n carte con numero
#    diverso

# numero di possibili combinazioni di 10 carte con numeri diversi per una mano di n elementi
temp2 <- choose(10,n)

#soluzione
out2 <- temp2*out1
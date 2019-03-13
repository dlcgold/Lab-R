# Esercizio 4: 

# Supponiamo che tre amici ad una festa gettino il proprio 
# cappello sulla stessa sedia. Questi cappelli vengono mescolati 
# tra loro e, successivamente, i tre amici scelgono un cappello a caso.

# Qual è la probabilità che nessuno di loro venga in possesso del proprio cappello?


#------------------------------------------

#SOLUZIONE: 

# Qual è la probabilità che nessuno di loro venga in possesso del proprio cappello?

# useremo l'evento complementare = 1 - P(almeno uno di loro prende il suo cappello)

# probabilità che il primo amico prenda il suo cappello
PE1 <- 1/3

# probabilità che il secondo amico prenda il suo cappello
PE2 <- 1/3

# probabilità che il terzo amico prenda il suo cappello
PE3 <- 1/3

# probabilità che il primo amico e il secondo prendano il loro cappello
PE1ANDE2 <- 1/3*1/2

# probabilità che il primo amico e il terzo prendano il loro cappello
PE1ANDE3 <- 1/3*1/2

# probabilità che il secondo amico e il terzo prendano il loro cappello
PE2ANDE3 <- 1/3*1/2

# probabilità che tutti e tre gli amici prendani il loro cappello
PE1ANDE2ANDE3 <- 1/3*1/2*1

# Probabilità che almeno un amico recuperi il proprio cappello
tmp <- PE1 + PE2 + PE3 - PE1ANDE2 - PE2ANDE3 - PE1ANDE3 + PE1ANDE2ANDE3

# soluzione richiesta:
out <- 1-tmp
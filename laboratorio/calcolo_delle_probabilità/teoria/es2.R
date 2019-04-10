# Si supponga che un’urna contenga 7 palline
# bianche e 5 nere. Supponiamo di estrarre due
# palline senza reimmissione.
# Assumendo che ogni pallina possa essere 
# estratta con egual probabilità
# qual è la probabilità che entrambe le palline estratte siano bianche?

# genero le palline, 7 bianche  e 5 nere
L=rep(c("white","black"), times=c(7,5))
pritn(L)
cat("\n")

# estraggo 2 palline dal vettore sopra generato
# non si hanno ripetizioni e non sono ordinate
# in urn avrò tutte i possibili risultati
urn <- urnsamples(L,size=2,replace=FALSE,ordered=FALSE)
pritn(urn)
cat("\n")

# calcolo le singole probabilità degli eventi
space_urn <- probspace(urn)
pritn(space_urn)
cat("\n")

# calcolo che entrambe le palline siano bianche
# isrep identifica quando ho 2 bianche 
p <- Prob(space_urn, isrep(space_urn,"white",2))
print(p)
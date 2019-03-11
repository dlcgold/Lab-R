# da un mazzo regolare di 52 carte
# (13 cuori, 13 quadri, 13 fiori, e 13 picche)
# vengono estratte contemporaneamente 3 carte

# calcolo la probabilità che siano tutte picche

# faccio tutte le possibili estrazioni di tre carte
carte <- urnsamples(cards(), 3, replace = FALSE, ordered = FALSE )

# aggiungo la probabilità
carte_space <- probspace(carte)

# calcolo la probabilità che tutte (all) siano picche
p <- Prob(carte_space, all(suit =="Club")
print(p)
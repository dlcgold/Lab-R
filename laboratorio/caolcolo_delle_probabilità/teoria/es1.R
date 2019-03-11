# Supponiamo che dieci carte numerate da uno 
# a dieci vengano introdotte in un cappello
# e che una carta venga estratta a caso.
# Vogliamo determinare:

#Qual è la probabilità che la carta 
# estratta sia il dieci?

#genero le carte
carte <- urnsamples(1:10,size=1)
print(carte)
cat("/n")
# vettore delle probabilità, 0,1 10 volte
prob <- rep(1/10,times=10)
print(prob)
cat("/n")
# spazio con carte e probabilità
S <- probspace(carte,probs=prob)
print(S)
cat("/n")
#calcolo probabilità
Prob(S, out==10)
print(Prob)
cat("/n")
# Un'urna contiene 3 
# biglie bianche e 2 biglie nere
# Calcolare la probabilità che
# estraendo in successione (senza reimbussolamento)
# 3 biglie almeno una sia nera

# genero i vari casi di estrazione 
urn <- urnsamples(c("B","B","B","N","N"),size = 3,ordered = TRUE)
print("urn")
cat("/n")

# aggiungo le singole probabilità
space_urn <- probspace(urn)
print("space_urn")
cat("/n")

# probailità che uno dei tre sia nero, uso gli or
p <- Prob(space_urn, X1=="N“ | X2=="N“ | X3=="N")
print(p)

# Aggiungo reimbossulamento

# genero i vari casi di estrazione 
urn <- urnsamples(c("B","B","B","N","N"),size = 3,ordered = TRUE, replace = TRUE)
print("urn")
cat("/n")

# aggiungo le singole probabilità
space_urn <- probspace(urn)
print("space_urn")
cat("/n")

# probailità che uno dei tre sia nero, uso gli or
p <- Prob(space_urn, X1=="N“ | X2=="N“ | X3=="N")
print(p)
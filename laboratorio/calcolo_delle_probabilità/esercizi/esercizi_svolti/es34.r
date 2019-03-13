# Esercizio 34

# Scegliamo tre carte a caso fra un mazzo di 52 carte da gioco 
# (divise in quattro semi con ciascuno tre figure: fante, donna, re).

# 1) Qual'è la probabilità che nA siano assi e n10 siano dieci?

# 2) Qual'è la probabilità che almeno nF1 siano figure?

# 3) Qual'è la probabilità che almeno nF2 siano figure e nessuno sia asso



#---------------------------------------------------------


#importo la libreria prob
library(prob)



# PARAMETRI 


# nA = numero di assi che si desidera estrarre nel primo punto
# n10 = numero di 10 che si desidera estrarre nel primo punto

# totEstr = numero totale di carte che si vuole estrarre

# nF1 = numero minimo di figure che si vogliono estrarre nel punto 2

# nF2 = numero minimo di figure che si vogliono estrarre nel punto 3

nA <- 2
n10 <- 1
totEstr <- 3


nF1 <- 2

nF2 <- 2

#------------------------------------------

#SOLUZIONE

# 1) Qual'è la probabilità che nA siano assi e n10 siano dieci?

# combinazioni possibili di estrazione di nA assi
temp1 <- choose(4,nA)

# combinazioni possibili di estrazione di n10 dieci
temp2 <- choose(4,n10)

#casi possibili

den <- choose(52,totEstr)

# soluzione:

out <- (temp1*temp2)/den


#------------------------------

# 2) Qual'è la probabilità che almeno nF1 siano figure?

# numero di possibili combinazioni di estrazioni di almeno nF1 figure
num2 <- 0

for (i in totEstr : nF1){
  num2 <- num2 + choose(12,i)*choose(40, totEstr-i)
}

#casi possibili
den <- choose(52,totEstr)


# soluzione:

out2 <- num2/den

#------------------------------

# 3) Qual'è la probabilità che almeno nF2 siano figure e nessuno sia asso

# numero di possibili combinazioni di estrazioni di almeno nF2 figure
num3 <- 0

for (i in totEstr : nF2){
  num3 <- num3 + choose(12,i)*choose(36, totEstr-i)
}

#casi possibili
den <- choose(52,totEstr)


# soluzione:

out3 <- num3/den









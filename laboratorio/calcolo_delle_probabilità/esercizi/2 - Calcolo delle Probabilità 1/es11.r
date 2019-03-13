# Una squadra di calcio schiera ad ogni partita 1 portiere, 5 difensori e 5 attaccanti.
# La società "Aleas" sceglie in modo casuale ciascun gruppo di giocatori 
# tra 'x' (ex: x = 2) portieri, 'y'(ex: y=8) difensori e 'z' (ex: z= 12) attaccanti disponibili.

# a) Quante sono le formazioni possibili?


# b) Se Roberto e Ronaldo sono due attaccanti, quante sono le formazioni in cui giocano entrambi?


# c) Se Franco è un difensore, quante sono le formazioni in cui gioca con l'attaccante Roberto?



#---------------------------------------------------------




#importo la libreria prob
library(prob)



# PARAMETRI 
#x = numero di portieri di cui dispone la squadra
#y = numero di difensori di cui dispone la squadra
#z = numero di attacanti di cui dispone la squadra

x <- 2
y <- 8
z <- 12


#------------------------------------------

#PROCEDIMENTO:

# a) Quante sono le formazioni possibili?

# calcolo le possibili combinazioni di portieri
cp <- choose(x,1)


# calcolo le possibili combinazioni di difensori
cd1 <- choose(y,5)

# calcolo le possibili combinazioni di attaccanti
ca1 <- choose(z,5)


out1 <- cp * cd1 * ca1






# b) Se Roberto e Ronaldo sono due attaccanti, quante sono le 
#    formazioni in cui giocano entrambi?


# calcolo le nuove possibili combinazioni di attaccanti
# z-2 e 3 sono dovute al fatto che già due attaccanti sono stati
# scelti e ne mancano, quindi, solo 3.

ca2 <- choose(z-2,3)


out2 <- cp * cd1 * ca2






# c) Se Franco è un difensore, quante sono le formazioni
#    in cui gioca con l'attaccante Roberto?


# calcolo nuove le possibili combinazioni di difensori.
# dato che un difensore è gia stato scelto, ce ne 
# restano da scegliere solo 4

cd2 <- choose(y-1,4)

# calcolo le possibili combinazioni di attaccanti
# z-1 e 4 sono dovute al fatto che già un attaccante è stato
# scelto. Ne mancano, quindi, solo 4.


ca3 <- choose(z-1,4)


out3 <- cp * cd2 * ca3



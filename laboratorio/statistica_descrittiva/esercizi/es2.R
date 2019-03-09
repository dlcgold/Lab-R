#leggo il file
es <- read.delim("~/Lab-R/laboratorio/statistica_descrittiva/esercizi/Giocatori.txt", sep = ";")
attach(es)

# carico libreria indici di forma 
library("e1071")

cat("Riferendoci a years si ha che:\n")
cat("\n")

# media years
media <- mean(years)
cat("la media è:", media, "\n")
cat("\n")

# mediana years
mediana <- median(years)
cat("la mediana è:", mediana, "\n")
cat("\n")

# moda years
m <- table(years)
moda <- m[m == max(m)]
cat("la moda è:", moda, "\n")
cat("\n")

# range years
ran <- range(years)
cat("il range è:", ran, "\n")
cat("\n")

# IQR years
robo <- IQR(years)
cat("l'IQR è:", robo, "\n")
cat("\n")

# varianza years
vari <- var(years)
cat("la virianza è", vari, "\n")
cat("\n")

# deviazione standard years
dev <- sd(years)
cat("la deviazione standard è:", dev, "\n")
cat("\n")

# asimmetria years
asi <- skewness(years)
cat("l'asimmetria è:", asi, "\n")
cat("\n")

# curtosi years
kurt <- kurtosis(years)
cat("kurtosi è:", kurt)

# scollego es
detach(es)
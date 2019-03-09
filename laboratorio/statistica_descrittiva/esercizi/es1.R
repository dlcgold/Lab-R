#leggo il file
es <- read.delim("~/Lab-R/laboratorio/statistica_descrittiva/esercizi/Giocatori.txt", sep = ";")
attach(es)

cat("Riferendoci a years  si ha che:\n")
cat("\n")

# frequenza assoluta degli anni
freq <- table(years)
cat("la frequenza assoluta è:\n")
print(freq)
cat("\n")

# frequenze relative di years
rel <- prop.table(table(years))
cat("la frequenza relativa è:\n")
print(rel)
cat("\n")

# frequenze cumulate assolute
cs <- cumsum(table(years))
cat("le frequenze cumulate asoslute sono:\n")
print(cs)
cat("\n")

# frequenze cumulate relative
cr <- cumsum(prop.table(table(years)))
cat("le frequenze cumulate relative sono:\n")
print(cr)
cat("\n")

# minimo e massimo
mini <- min(years)
maxi <- max(years)
cat("il minimo è:", mini, "e il massimo è:", maxi)
cat("\n")

cat("ecco ora l'istogramma delle frequenze assolute")
# istogramma frequenze assolute
hist(years, main = "Istogramma età")

# scollego es
detach(es)
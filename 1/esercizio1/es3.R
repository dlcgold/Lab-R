#leggo il file
es <- read.csv("~/Lab-R/1/esercizio1/Giocatori.txt", sep = ";")
attach(es)

# calcolo le frequenze assolute
cat("ecco le frequenze assolute di role e years:\n")
tc <- table(role, years)
print(tc)
cat("\n")

# tabella di contingenza con distribuzioni assolute marginali
cat("tabella di contingenza con distribuzioni assolute marginali:\n")
tcc <- cbind(tc, margin.table(tc, 1)) 
dist <- rbind(tcc, margin.table(tcc, 2)) 
print(dist)
cat("\n")

# barplot
cat("ecco il barplot:\n")
barplot(table(role, years),legend=TRUE,
	col = c("lightblue", "mistyrose", "lightcyan", "lavender", "cornsilk"), 
	xlab = "Età", ylab = "Frequenze", args.legend = list(x = "topright",title = "Ruoli"))

detach(es)

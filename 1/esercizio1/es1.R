#leggo il file
es <- read.csv("path/to/Giocatori.txt", sep = ";")
attach(es)

# frequenza assoluta degli anni
table(years)

# frequenze relative di years
prop.table(table(years))

# frequenze cumulate assolute
cumsum(table(years))

# frequenze cumulate relative
cumsum(prop.table(table(years)))

# minimo e massimo
min(years)
max(years)

# istogramma frequenze assolute
hist(years, main = "Istogramma età")
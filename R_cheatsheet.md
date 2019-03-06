# R CheatSheet

```R
# caricare un file con gui
f <- file.choose()
x <- scan(f, sep = "separatore dati")

# oppure
x <- scan("path/to/file", sep = "separatore dati", dec = "separatore decimali")

# oppure per leggere csv
x <- read.csv("path/to/file", sep="separatore")

# leggere sorgente R
source("path/to/file.R")

# frequenze assolute, sopra valori e sotto frequenze
# x può anche essere una sola colonna del database
table(x)

# frequenze relative
prop.table(table(x))

# frequenze cumulate assolute
cumsum(table(x))

# frequenze cumulate relative
cumsum(prop.table(table(x))

# istogramma con frequenze assolute, su x i dati e su y le frequenze 
barplot(table(x), xlab="etichetta x", ylab="etichetta ", main="titolo")
```
<p align="center">
  <img width="250" height="250" src="img/barplot.png">
</p>

```R
# grafico a stack con frequenze assolute, su x i dati e su y le frequenze 
stripchart(x, method = "stack", xlab = "etichetta x", ylab = "etichetta ", main="titolo")
```
<p align="center">
  <img width="250" height="250" src="img/stripchart.png">
</p>

```R
# minimo e massimo
min(x)
max(x)

# lista di dati
array <- c(0.4, 1.5, 2.3, 3, 4, 5.5)

# istrogramma con step dato da un array
hist(x, breaks = array, xlab = "etichetta x", ylab = "etichetta ", main = "titolo")
```
<p align="center">
  <img width="250" height="250" src="img/histstep.png">
</p>

```R
# istrogramma con intervalli automatici

hist(x, xlab = "etichetta x", ylab = "etichetta ", main = "titolo")
```
<p align="center">
  <img width = "250" height="250" src="img/histauto.png">
</p>

```R
# scatterplot
plot(x, xlab = "x", ylab = "y", main = "titolo")
```
<p align="center">
  <img width = "250" height="250" src="img/scatter.png">
</p>

```R
# ordinamento crescente
sort(x)

# ordinamento decrescente (decreasing = dec = true = T)
sort(x, dec = T)

# media
mean(x)

# mediana
median(x)

# moda
m <- table(x)
m[m == max(m)]

# varianza campionaria
var(x)

# deviazione standard
sd(x)
sqrt(var(x))
```
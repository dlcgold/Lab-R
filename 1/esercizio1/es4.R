# carico i vettori x e y
x <- c(4, 8, 9, 12, 7)
y <- c(17, 24, 25, 28, 26)

cat("per i dati:\n")
cat("x = ", x)
cat("\n")
cat("y = ", y)
cat("\n")
# calcolo la retta di regressione
rr <- lm(y ~ x)
cat("ecco i coefficienti della regressione:\n")
print(coefficients(rr))
cat("\n")

# disegno il grafico
cat("ecco il grafico con la regressione linerare:\n")

cat("\n")
# prima lo scatterplot
plot(x, y,xlab="x",ylab="y")

# e poi la retta
abline(rr, col="red", lwd=1)

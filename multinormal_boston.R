#Mediciones de pecho, cintura y cadera de una muestra de hombres y mujeres
library(MASS)
library(ggplot2)
library(tidyverse)
library(qqplot)

datos <- as.data.frame(Boston)

x <- datos[, ]
m <- colMeans(x)
S <- cov(x)
d<- apply(x, MARGIN = 1, function(x)
  + t(x - m) %*% solve(S) %*% (x - m))


plot(qchisq((1:nrow(x) - 1/2) / nrow(x), df = 3), sort(d),
xlab = expression(paste("Cuantiles de la ", chi[3]^2)),
ylab="Distancias ordenadas")
abline(a=0,b=1)

# Test en R para revisar normalidad multivariante

library(mvnormtest)
# Shapiro-Wilk
x=t(x)
mshapiro.test(x)

#El p-valor  de Shapiro-Wilk de 2.2e-16 indica que no se cumple el supuesto de normalidad multivariante.
# una o más variables individuales no se distribuyen normalmente.

library(car)
x=t(x)
qqPlot(x[,1])
qqPlot(x[,2])
qqPlot(x[,3])
qqPlot(x[,4])
qqPlot(x[,5])
qqPlot(x[,6])
qqPlot(x[,7])
qqPlot(x[,8])
qqPlot(x[,9])
qqPlot(x[,10])
qqPlot(x[,11])
qqPlot(x[,12])
qqPlot(x[,13])



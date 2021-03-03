pdf("visualization.pdf")

library(tidyverse)
carprice<-read.csv('CarPrice_Assignment.csv')

h_dep <- hist(carprice$price,col =c('green','blue','pink','orange','red','red','red','red','red'),xlab='price in $',main = 'Dependent variable price frequency',las=1)
xfit <- seq(min(carprice$price), max(carprice$price), length = 40) 
yfit <- dnorm(xfit, mean = mean(carprice$price), sd = sd(carprice$price)) 
yfit <- yfit * diff(h_dep$mids[1:2]) * length(carprice$price) 
lines(xfit, yfit, col = "black", lwd = 2)


h_ind <- hist(carprice$horsepower,col =c('black','green','pink','blue','red','red','red','red','red'),xlab='horsepower',main = 'Independent variable horsepower frequency',las=1)
xfit1 <- seq(min(carprice$horsepower), max(carprice$horsepower), length = 40) 
yfit1 <- dnorm(xfit1, mean = mean(carprice$horsepower), sd = sd(carprice$horsepower)) 
yfit1 <- yfit1 * diff(h_ind$mids[1:2]) * length(carprice$horsepower) 
lines(xfit1, yfit1, col = "black", lwd = 2)

plot(carprice$price,carprice$horsepower,xlab = 'price in $',ylab = 'horsepower',main = 'horsepower vs price of a car', col=4,las=1)

abline(lm(carprice$horsepower~carprice$price),lwd=3,col='red')


dev.off()


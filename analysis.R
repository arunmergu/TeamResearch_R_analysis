library(tidyverse)
carprice<-read.csv('CarPrice_Assignment.csv')
t.test(carprice$horsepower,carprice$price,var.equal = TRUE)
cor(carprice$price,carprice$horsepower,method='spearman')


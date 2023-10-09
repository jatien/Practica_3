library("tidyverse")
data <- read.csv("HousingData.csv")
print(data, width=50)

#Correlaciones con media de vivienda
a<-data %>%
  select(5:7,13,14)
na.omit

pairs(a,
      col = c("red", "blue"), 
      pch = 18)

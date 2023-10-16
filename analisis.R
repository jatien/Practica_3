library("tidyverse")
library("ggcorrplot")
library("GGally")

data <- read.csv("HousingData.csv")
print(data, width=50)

#Correlaciones con media de vivienda
a<-data %>%
  na.omit

a_1 <- data %>%
  select(6,13,11,14) %>%
  na.omit
a %>%
  select(14,13) %>%
  na.omit(.) %>% 
  cor(.) %>% 
  ggcorrplot(., hc.order = TRUE,
             type = "lower")
a_2 = subset(a_1,CHAS == 0)

ggpairs(a_2)

pairs(a_2,
      col = c("red", "blue"), 
      pch = 18)


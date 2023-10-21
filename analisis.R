library(tidyverse)
library(ggcorrplot)
library(GGally)
library(MVA)


df <- as.data.frame(Boston)

selected_vars <- c("dis", "tax", "ptratio", "black", "lstat", "medv")
df_subset <- df[, selected_vars]

df_1 <- df %>% 
  dplyr::select(6,11,13,14) %>%
  na.omit


pairs(df_1, col='darkgreen',pch=18)

#dataset para comparar media de precio
a_1 <- data %>%
  dplyr::select(6,11,13,14) %>%
  na.omit

#dataset para contaminación
a_2 <- data %>%
  dplyr::select(8,7,3,5) %>%
  na.omit

df %>%
  cor(.) %>% 
  ggcorrplot(., hc.order = TRUE)

pairs(a_1,
      col = c( "darkgreen"), 
      pch = 18)

ggpairs(a_2)


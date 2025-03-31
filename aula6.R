#install.packages("tidyverse")
#install.packages("WDI")

library(WDI)
library(tidyverse)

str(dadospib)
grafpainel = ggplot(dadospib, 
                     mapping = aes(y = NY.GDP.MKTP.CD, 
                                   x = year)) +  
  geom_point()
print(grafpainel)

str(dadospib2023)
grafcorte = ggplot(dadospib2023, 
                    mapping = aes(y = NY.GDP.MKTP.CD, 
                                  x = year)) +  
  geom_point()
print(grafcorte)

str(dadospibbr)
grafbr = ggplot(dadospibbr, 
                   mapping = aes(y = NY.GDP.MKTP.CD, 
                                 x = year)) +  
  geom_line()
print(grafbr)

grafchina <- ggplot(dadoschina, 
                    mapping = aes(y = NY.GDP.MKTP.CD / 1e12,
                                  x = year)) +  
  geom_line(color = "red") + 
  labs(title = "PIB da China (em trilhões de USD)", 
       x = "Ano",  
       y = "PIB (Trilhões de USD)") +  
  theme_minimal() +  
  scale_y_continuous(labels = scales::comma)  

#print(grafchina)

grafpopchina <- ggplot(dadospopchina, 
                       mapping = aes(y = SP.POP.TOTL / 1e6,  
                                     x = year)) +  
  geom_line(color = "green") +
  labs(title = "População Total da China (em milhões de pessoas)",  
       x = "Ano",  
       y = "População (Milhões)") +  
  theme_minimal() +  
  scale_y_continuous(labels = scales::comma) 

print(grafpopchina)

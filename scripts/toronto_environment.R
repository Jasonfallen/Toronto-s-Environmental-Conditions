#### Preamble ####
# Purpose: A Study Focus on Toronto's Environmental Conditions
# Author: HaoCheng Xu
# Data: 2022-02-06
# Contact: haocheng.xu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the "housing_price.csv" data and saved it to inputs/data



#### Workspace setup ####

library(patchwork)
library(tidyverse)

# Read in the raw data. 
data <- read.csv("TEP_score.csv")
data <- na.omit(data) 

a1 <- data %>% ggplot(aes(x=Tree.Cover, y=Pollutants.Released.to.Air)) + 
  geom_point(alpha=0.7, color="antiquewhite3")

a2 <- data %>% ggplot(aes(x=Green.Rebate.Programs, y=Pollutants.Released.to.Air))+ 
  geom_point(alpha=0.7, color="antiquewhite3")

a3 <- data %>% ggplot(aes(x=Green.Spaces, y=Pollutants.Released.to.Air)) + 
  geom_point(alpha=0.7, color="antiquewhite3")

(a1 | a2 | a3 ) 



b1 <- data %>% ggplot(aes(x=Pollutant.Carcinogenic.TEP.Score, y=Pollutants.Released.to.Air)) +
  geom_point(alpha=0.7, color="antiquewhite3")

b2 <- data %>% ggplot(aes(x=Pollutant.Non.Carcinogenic.TEP.Score, y=Pollutants.Released.to.Air)) + 
  geom_point(alpha=0.7, color="antiquewhite3")

(b1 | b2 )


b3 <- data %>% ggplot(aes(x=Pollutant.Non.Carcinogenic.TEP.Score, y=Green.Spaces)) + geom_point(alpha=0.7, color="antiquewhite3")

b4 <- data %>% ggplot(aes(x=Pollutant.Non.Carcinogenic.TEP.Score, y=Tree.Cover)) + geom_point(alpha=0.7, color="antiquewhite3")

(b3 | b4)


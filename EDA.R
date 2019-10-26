library(tidyverse)
library(dplyr)
library(lubridate)

ramen <- read.csv ("../Desktop/ramen-ratings.csv", header = TRUE)

dim(ramen)
names(ramen)
str(ramen)
glimpse(ramen)
summary(ramen)

head(ramen)
tail(ramen)

sum(is.na(ramen))
boxplot(ramen)

ramen1 <- ramen %>% filter (Country == "USA", Stars == "5")
head(ramen1)

write.csv(ramen1, 'ramen1USAStars.csv')

ramen %>% arrange (Stars)
ramen %>% arrange (desc(Stars))

#filter & arrange 
ramen1 %>% 
  filter (Counrty == "USA") %>%
  arrange (desc(Stars))

by_stars <- ramen %>%
  group_by(Country) %>%
  summarize(Stars = sum(as.numeric(Stars)),
            meanStars = mean(Stars))

ggplot (by_stars, aes(x=Country, y= Stars)) +
  geom_point()

by_stars <- ramen %>%
  group_by(Style) %>%
  summarize(Stars = sum(as.numeric(Stars)),
            meanStars = mean(Stars))

ggplot (by_stars, aes(x=Style, y= Stars)) +
  geom_point()


by_stars <- ramen %>%
  filter (Country=="USA")
  group_by(Style) %>%
  summarize(Stars = sum(as.numeric(Stars)),
            meanStars = mean(Stars))

ggplot (by_stars, aes(x=Style, y= Stars)) +
  geom_point()

Styles<- ramen$Style
hist(Style)


#1
summary(ramen)

#2
ramenUSA <- ramen %>% filter(Country == "USA")

ramenUSA[which.min(ramenUSA$Stars),]
ramenUSA[which.min(ramen$Style),]
ramenUSA[which.max(ramen$Stars),]
ramenUSA[which.max(ramen$Style),]

#Results:
#ramenUSA[which.min(ramenUSA$Stars),]
#Review..           Brand                    Variety Style Country Stars Top.Ten
#14     2426 Dr. McDougall's Vegan Pad Thai Noodle Soup   Cup     USA     0        
#> ramenUSA[which.min(ramen$Style),]
#   Review.. Brand Variety Style Country Stars Top.Ten
#NA       NA  <NA>    <NA>  <NA>    <NA>  <NA>    <NA>
#> ramenUSA[which.max(ramen$Stars),]
#   Review..    Brand          Variety Style Country Stars Top.Ten
#33     2248 Nongshim Shin Noodle Soup   Cup     USA     5        
#> ramenUSA[which.max(ramen$Style),]
#  Review..  Brand                                               Variety Style Country Stars Top.Ten
#8     2538 Nissin Cup Noodles Very Veggie Beef Flavor Ramen Noodle Soup   Cup     USA     5      


#3
ram_grouped <- ramen %>%
  group_by (Country, Style) %>%
  summarize (MeanStyles = mean(Styles))

meanstars<- mean(as.numeric(Stars))
head(meanstars)

summary(ram_grouped)

ggplot(ram_grouped, aes (x=Style, y= meanstars)) + 
geom_line()  
#did not work, no data on line plot 

library(ggthemes)
library(tidyverse)
library(dplyr)
library(lubridate)

??ChickWeight
data("ChickWeight")

chicks<- ggplot (ChickWeight, aes(x=ChickWeight$weight))

chicks+ geom_histogram()
diff(range(ChickWeight$weight)) / 40
chicks + geom_histogram(binwidth = 8.45)

# R suggests I use 30 instead, which gives me 11.26 for bins

chicks+ geom_histogram()
diff(range(ChickWeight$weight)) / 30
chicks + geom_histogram(binwidth = 11.26)

ggplot(ChickWeight, aes (x=ChickWeight$weight, fill = factor(ChickWeight$Diet))) +
  geom_histogram(binwidth = 8.45)

ggplot(ChickWeight, aes (x=ChickWeight$weight, fill = factor(ChickWeight$Diet))) +
  geom_histogram(binwidth = 11.26)

ggplot(ChickWeight, aes (x=ChickWeight$weight, fill = factor(ChickWeight$Diet))) +
  geom_histogram(aes( y= ..count../sum(..count..)),
                 binwidth = 8.45, position = "fill")

ggplot(ChickWeight, aes(x=ChickWeight$Time, y= ChickWeight$weight)) + 
  geom_jitter(alpha=.6)

ggplot(ChickWeight, aes(x=ChickWeight$Time, y= ChickWeight$weight, color = ChickWeight$Diet)) + 
  geom_jitter(alpha= 0.6) +
  stat_smooth(method = "lm", se=FALSE, col ="grey")



data("WWWusage")
??WWWusage
str(WWWusage)

www <- data.frame (usage = as.matrix(WWWusage), use_time=time(WWWusage))

ggplot(www, aes(x=use_time, y=usage)) +
  geom_line()



data("airquality")
??airquality
str(airquality)

ggplot(airquality, aes(x=Day, y=Temp)) +
  geom_line()

airquality$new_date <- paste(airquality$Month, airquality$Day, "1973", sep="-")
airquality$new_date <- mdy (airquality$new_date)
glimpse(airquality)

ggplot(airquality, aes(x= new_date, y=Temp)) + geom_line ()




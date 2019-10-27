install.packages("ggthemes")
library(ggthemes)
library(tidyverse)
library(dplyr)
library (lubridate)

?iris
data(iris)
summary(iris)
glimpse(iris)
head(iris)
sum(is.na(iris))

ggplot(iris, aes(x=Sepal.Length, y= Sepal.Width)) +
  geom_point ()

ggplot(iris, aes(x=Sepal.Length, y= Sepal.Width)) +
  geom_jitter(alpha = 0.6)

ggplot(iris, aes(x=Sepal.Length, y= Sepal.Width)) +
  geom_jitter()+
  labs(title= "Sepal Length by Sepal Width in Iris Dataset")

ggplot(iris, aes(x=Sepal.Length, y= Sepal.Width)) +
  geom_jitter(alpha = 0.6) +
  facet_grid(.~Species)

ggplot(iris, aes(x=Sepal.Length, y= Sepal.Width)) +
  geom_jitter(alpha = 0.5) +
  facet_grid(.~Species) +
  stat_smooth(method = "lm", se = FALSE, col= "red")

iris_plot <- ggplot(iris, aes(x= Sepal.Length, y= Sepal.Width, color=Species))
iris_plot + geom_point ()
iris_plot + geom_jitter ()
iris_plot + geom_line ()

posn <- position_jitter (width = 0.1)
iris_plot + geom_point (position = posn)

iris_summary <- aggregate(iris[1:4], list(iris$Species), mean)
names(iris_summary)[1] <- "Species"
iris_summary 

iris_plot + geom_point ()+
  geom_point(data=iris_summary,
             shape = 21, size =5, fill = "#00000080")

iris_plot + geom_point(position = posn, alpha = .6) +
  geom_point (data = iris_summary, shape = 15, size = 5)

iris_plot + geom_point (position = posn, alpha =.6) +
  geom_vline (data= iris_summary, aes(xintercept = Sepal.Length))

iris_plot + geom_point (position = posn, alpha =.6) +
  geom_vline (data= iris_summary, linetype =2, aes(xintercept = Sepal.Length)) +
  geom_hline (data = iris_summary, linetype = 3, aes(yintercept = Sepal.Width))

iris_plot +
  geom_point (position = posn, alpha = 0.5) +
  facet_grid(.~Species)+
  stat_smooth (method = "lm", se=FALSE, col="red") +
  scale_y_continuous("Sepal Width (cm)",
                     limits = c(1,5),
                     expand = c(0,0)) +
  scale_x_continuous("Sepal length (cm)",
                     limits = c(4,8),
                     breaks = seq(2,8,2),
                     expand = c (0,0)) +
  coord_equal ()

iris_plot + 
  geom_point (position = posn, alpha = 0.5)+
  facet_grid (.~Species) +
  stat_smooth (method = "lm", se=FALSE, col= "red") +
  scale_y_continuous("Sepal Width (cm)",
                     limits = c(1,5),
                     expand = c(0,0))+
  scale_x_continuous("Sepal length (cm)",
                     limits = c(4,8),
                     breaks = seq (2,8,2),
                     expand = c(0,0))+
  coord_equal() +
  labs(x= "Sepal Length", y= "Sepal Width", col= "Species")

ggplot(iris, aes (x= Sepal.Length, y= Sepal.Width)) +
  geom_jitter(alpha = 0.5) +
  facet_grid (.~Species) +
  stat_smooth (method= "lm", se = FALSE, col= "red") +
  scale_y_continuous ("Sepal Width (cm)",
                      limits = c(1,5),
                        expand = c(0,0)) +
scale_x_continuous("Sepal length (cm)",
                   limits = c(4,8),
                   breaks= seq (2,8,2),
                   expand = c(0,0)) + 
  coord_equal ()+
  labs (x= "Sepal Length", y="Sepal Width", col= "Species")+
  theme (panel.background = element_blank(),
         plot.background = element_blank(),
         legend.background = element_blank(),
         legend.key = element_blank (),
         strip.background = element_blank(),
         axis.text = element_text(colour="black"),
         axis.ticks = element_line (colour = "black"),
         panel.grid.major = element_blank(),
         panel.grid.minor = element_blank(),
         axis.line = element_line (colour="black"),
         strip.text = element_blank(),
         panel.spacing = unit (1,"lines")
         )

iris_theme <- theme (panel.background = element_blank (),
                     plot.background = element_blank(),
                     legend.background = element_blank(),
                     legend.key = element_blank(),
                     strip.background = element_blank(),
                     axis.text = element_text(colour = "black"),
                     axis.ticks = element_line(colour = "black"),
                     panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(),
                     axis.line = element_line (colour = "black"),
                     strip.text = element_blank(),
                     panel.spacing = unit(1, "lines")
                     )               

iris_plot + geom_point(posn) + labs(x= "Sepal Length", y= "Sepal Width", col = "Species")

??ggthemes

iris_plot + geom_jitter() + theme_tufte()





install.packages("factoextra")
install.packages("rpart")
install.packages("rpart.plot")
install.packages("rattle")
install.packages("RColorBrewer")
library(tidyverse)
library(rpart)
library(rpart.plot)
library(rattle)
library(RColorBrewer)
library(class)
library(factoextra)

data("txhousing")
?txhousing
summary(txhousing)
head(txhousing)

lm_housing <- lm(median~listings, data=txhousing)
unseen <- data.frame(listings=800)
predict(lm_housing, unseen)
summary(lm_housing)
lm_housing1 <- lm(median~month, data = txhousing)
summary(lm_housing1)

street <- read.csv("Desktop/Data Analysis - 640/info640-master/DataSets/streeteasy.csv")
summary(street)

street_selected6 <- street %>%
  select(rent, bedrooms, bathrooms, size_sqft, min_to_subway, floor)
lm_street_selected6 <- lm(rent~., data=street_selected6)
summary(lm_street_selected6)

lm_street_size <- lm(rent~size_sqft, data = street_selected6)
summary(lm_street_size)

street_selected16 <- street [,1:17]
str(street_selected16)
lm_street_selected16 <- lm(rent~., data = street_selected6)
summary(lm_street_selected16)

#not sure how to read Pr,(>t), no fee or elevator has most impact?

set.seed(1234)

train <- read.csv("Desktop/Data Analysis - 640/info640-master/DataSets/titanic/train.csv", header=TRUE)
test <- read.csv ("Desktop/Data Analysis - 640/info640-master/DataSets/titanic/test.csv", header = TRUE)
str(train)
str(test)

train <- train %>%
  select (Pclass, Sex, Age, Survived)
test <- test %>%
  select(Pclass, Sex, Age, Survived)

tree <- rpart(Survived ~ Pclass + Sex + Age, train, method = "class") 
fancyRpartPlot(tree)

pred <- predict(tree,test, type = "class")
conf <- table(test$Survived, pred)
conf

TP <- conf[1,1]
FN <- conf[1,2]
FP <- conf[2,1]
TN <- conf[2,2]

acc <- sum(TP,TN)/ sum(TP,TN,FP,FN)
acc
#.968895

prec<- TP/sum(TP,FP)
prec
#.9809886

rec <- TP/sum(TP,FN)
rec
#.9699248

acc <- sum(diag(conf))/sum(conf)
acc
#.968895

overfit_tree<- rpart(Survived ~ Pclass + Sex + Age, train, method = "class")
fancyRpartPlot(overfit_tree)
pruned <- prune(tree, cp=.01)
fancyRpartPlot(pruned)


train <- drop_na(train)
test <- drop(test)
train_labels <- train$Survived
test_labels <- test$Survived

knn_train <- train
knn_test <- test

knn_train$sex <- as.factor(knn_train$Sex)
knn_test$Sex <- as.factor(knn_test$Sex)

knn_train$Sex <- as.factor(gsub("male", "1", knn_train$Sex))
knn_train$Sex <- as.factor(gsub("female", "0", knn_train$Sex))

knn_test$Sex <- as.factor(gsub("male", "1", knn_test$Sex))
knn_test$Sex <- as.factor(gsub("female", "0", knn_test$Sex))

knn_train <- as.numeric(knn_train$Sex)
knn_test <- as.numeric(knn_test$Sex)

knn_train$Survived <- NULL
knn_test$Survived <- NULL

min_class <- min(knn_train$Pclass)
max_class <- max(knn_train$Pclass)
knn_train$Pclass <- (knn_train$Pclass - min_class) /(max_class  - min_class)
knn_test$Pclass <- (knn_test$Pclass - min_class) / (max_class - min_class)

min_age <- min(knn_train$Age)
max_age <- max(knn_train$Age)
knn_train$Age <- (knn_train$Age - min_age) / (max_age - min_age)
knn_test$Age <- (knn_test$Age - min_age) / (max_age - min_age)

k_pred <- knn(train = knn_train, test = knn_test, cl = train_labels, k=5)
k_pred

conf <- table (test_labels, k_pred)
conf
#conf worked, but with error about k_pred 

my_titanic <- data.frame("Age" = .6, "Pclass" = .5, "Sex" = 0)
new_k_pred <- knn(train=knn_train, test=my_titanic, cl=train_labels,k=5)
#error train and class different lengths? 
new_k_pred



set.seed(1234)
data("iris")
my_iris <- iris[,1:4]
species<- iris$Species


kmeans_iris <- kmeans(my_iris, centers = 3, nstart = 10)
kmeans_iris

table(species, kmeans_iris$cluster)
plot(Petal.Length ~ Petal.Width, data = my_iris, col= kmeans_iris$cluster)
fviz_cluster(kmeans_iris, data = my_iris)

wss_tot <- 0
for (i in 1:15) {
  km_out <- kmeans(my_iris, centers = i, nstart = 10)
  wss_tot[i] <-km_out$tot.withinss/km_out$tots
}

plot(1:15, wss_tot, type = "b",
     xlab = "Number of Clusters",
     ylab = "WSS/TSS")

data("USArrests")
str(USArrests)



wss_tot <- 0
for (i in 1:15) {
  km_out <- kmeans(USArrests, centers = i, nstart = 10)
  wss_tot[i] <-km_out$tot.withinss/km_out$tots
}

plot(1:15, wss_tot, type = "b",
     xlab = "Number of Clusters",
     ylab = "WSS/TSS")

kmeans_arrests <- kmeans(USArrests, centers = 2, nstart = 10)
kmeans_arrests

plot(Murder ~ Assault, data = USArrests, col = kmeans_arrests$cluster)
fviz_cluster(kmeans_arrests, data = USArrests)

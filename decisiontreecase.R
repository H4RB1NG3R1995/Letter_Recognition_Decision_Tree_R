#Preparing the environment for Decision Trees
library(caret)
library(ggplot2)
library(rpart.plot)
library(pROC)
library(ROCR)
library(rpart)
library(randomForest)
library(caTools)
library(e1071)

#Setting the working directory and Reading the dataset
Path<-"E:/IVY PRO SCHOOL/R/05 PREDICTIVE ANALYTICS PROJECTS/04 DECISION TREES/CASE STUDY2/02DATA"
setwd(Path)
getwd()

letters=read.csv("letters_ABPR.csv")
head(letters)

#Basic Exploration of the Data Set
dim(letters)
str(letters)
summary(letters)

#missing values
as.data.frame(colSums(is.na(letters)))

#changing letter into factor
letters$letter<-as.factor(letters$letter)

#Splitting the dataset into train and test data
set.seed(1000)

spl = sample.split(letters$letter, SplitRatio = 0.6)
train = subset(letters, spl==TRUE)
dim(train)
str(train)

test = subset(letters, spl==FALSE)
dim(test)
str(test)

#Building the CART model
CART1<-rpart(letter~.,data=train, method = "class")
prp(CART1)

#Checking the accuracy of the model in the test data
predictCART1<-predict(CART1, newdata=test, type = "class")
table(test$letter,predictCART1)

#ConfusionMatrix
confusionMatrix(predictCART1,test$letter)
#Accuracy : 0.8668

#Checking the accuracy of the model in the train data
predictCART1<-predict(CART1, newdata=train, type = "class")
table(train$letter,predictCART1)


#ConfusionMatrix
confusionMatrix(predictCART1,train$letter)
#Accuracy : 0.8834

#A Random Forest Model
set.seed(2000)

spl = sample.split(letters$letter, SplitRatio = 0.6)
Train_1 = subset(letters, spl==TRUE)
dim(Train_1)
str(Train_1)


Test_1 = subset(letters, spl==FALSE)
dim(Test_1)
str(Test_1)

#model
PredictForest1<-randomForest(letter~.,data = Train_1)
PredictForest1

#Checking the accuracy of the model
predForest1<-predict(PredictForest1, newdata=Test_1, type = "class")
table(Test_1$letter,predForest1)


#ConfusionMatrix
confusionMatrix(predForest1,Test_1$letter)
#Accuracy : 0.9848
#finding how people tae decissions to buy products
#Creating decission tree
#install pacages rpart and rpart.plot
library(rpart) #doing classification
library(rpart.plot) #Visulizing the tree

#Dataset
str(iris)
head(iris)
summary(iris)
names(iris)
#classification tree
set.seed(1234)
#Poduct Spieces
ctree= rpart(Species~., method = 'class', data = iris) #.covers all the names executed below
ctree= rpart(Species~Petal.Length+Petal.Width+Sepal.Length+Sepal.Width, method = 'class', data = iris)
ctree

printcp(ctree)
ctreeprune= prune(ctree, cp=0.44)
ctreeprune

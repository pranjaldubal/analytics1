#Clustering iris
head(iris)
str(iris)
table(iris)
irisfeatures= iris[,-5]
head(irisfeatures)
iriskm1= kmeans(irisfeatures, centers = 3)
iriskm1
iriskm1$centers
colMeans(irisfeatures[iriskm1$cluster==1,])
iriskm1$iter
(iris[iriskm1$cluster==1,])
km1=kmeans(datacenters = 1)

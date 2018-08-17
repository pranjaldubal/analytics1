data= iris[-5]
head(data)
km1= kmeans(data,centers = 1)
km1$tot.withinss
km2= kmeans(data,centers = 2)
km2$tot.withinss
km2$withinss
km3= kmeans(data,centers = 3)
km3$tot.withinss
km3$withinss
km4= kmeans(data,centers = 4)
km4$tot.withinss
km4$withinss
km5= kmeans(data,centers = 5)
km5$tot.withinss
km5$withinss

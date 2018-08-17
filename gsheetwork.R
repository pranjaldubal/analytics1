#3rd Method: gsheet
library(gsheet)
url= "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=1595306231"
omni3 = as.data.frame(gsheet::gsheet2tbl(url))
omni=omni3
head(omni)
tail(omni)
str(omni)
summary(omni)
range(omni$price)
mlrmodel1 = lm(sqty ~ price+promotion, data = omni)
mlrmodel1
summary(mlrmodel1)
#f-stat p-value is less than 0.05 hence we can say that there is a prediction model which exists.
#adjusted r- squared: 74.21% can be predicted others we cant know why is it happning.
#coefficients all the 3 have*** so there is very strong relatio between all of these.
#sqtu= 5837.5208 -53.2173*promotion

#check for assumption
#is there any linear relationship between IV and DV
library(car)
car::crPlots(mlrmodel1)
plot(mlrmodel1)
par(mfrow=c(2,2))
plot(mlrmodel1, which = 1)
par(mfrow=c(1,1))
plot(density(residuals(mlrmodel1)))
plot(mlrmodel1, which = 2)
car::durbinWatsonTest(mlrmodel1)
#if p-value>0.05 there is auto corelation
#there is multicollinearity
car::vif(mlrmodel1)
#if the square root is less than 2 in the result there is auto cooliniaerity
plot(mlrmodel1,4)
#predict the values of IV
(ndata1 = data.frame(price=c(60,70), promotion= c(300,400)))
range(omni$price): range(omni$promotion)
predict(mlrmodel1, newdata = ndata1)
cbind(ndata1, Predict= predict(mlrmodel1,newdata = ndata1,predict='response'))
#assumptions: liniarity homo/equal variale no_autocollinearity outlear_remove Residual_ND Multicooliniarity_no

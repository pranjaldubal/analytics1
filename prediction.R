women
str(women)
#predict weight for height 67.5
fit = lm(weight ~ height, data = women)
#fit = lm(sales ~ price + promotion, data = omni) #sales is y, price and promotions is x
summary(fit)
#f-stat, p-value<.05 then yes there is a prediction model which exixts
#are the coefficients significant?- looking at p-value more than 1 * it is important here it is *** so it is very important. hieght is the important variable to predict weight. p-value< 0.05- yes it is significant.
#y=mx+c- simple linear regretion
#multiple r squared for single linear regretion and adjusted r squard for multiple linear regration.
(ndata1 = data.frame(height=c(67.5, 69.5, 70.1, 12)))
(p1=predict(fit, newdata = ndata1, type = 'response'))
cbind(ndata1,p1) #for seeing both weight corrosponding to height.
range(women$height)
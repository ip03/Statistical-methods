
x <- c(10, 35, 15, 25, 30, 20, 40, 45, 35)


boxplot(x, main = "Boxplot of Given Data", xlab = 'width x axis', ylab = 'data1')
=
summary(x)
med_main = median(x) 
q1 = quantile(x, 0.25)
q3 = quantile(x, 0.75)
q1
q3

IQR(x)
ul = 35 + (1.5*6)
ll = 29 - (1.5*6)
x[which(x < ll | x > ul)]
typeof(x)





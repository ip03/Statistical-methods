
data(iris)


model <- lm(Petal.Length ~ Sepal.Length, data = iris)


summary(model)


plot(Petal.Length ~ Sepal.Length, data = iris, main = "Relationship between Petal Length and Sepal Length",
     xlab = "Sepal Length", ylab = "Petal Length")
abline(model, col = "red")


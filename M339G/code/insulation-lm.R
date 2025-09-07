data(mtcars)

model <- lm(mpg ~ hp + hp^2, data = mtcars)
summary(model)

model.i <- lm(mpg ~ hp + I(hp^2), data = mtcars)
summary(model.i)

model.poly <- lm(mpg ~ poly(hp,2), data = mtcars)
summary(model.poly)

model.poly.raw <- lm(mpg ~ poly(hp,2, raw=TRUE), data = mtcars)
summary(model.poly.raw)

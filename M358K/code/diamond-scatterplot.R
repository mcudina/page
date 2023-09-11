diamonds<-read.csv("diamond.csv")
diamonds

price=diamonds$Price
carat=diamonds$Carats

plot(carat, price, 
     pch=19, 
     col="salmon",
     main="Carats vs. price",
     xlab="Carats",
     ylab="Price")

lin.mod=lm(price ~ carat)
lin.mod
summary(lin.mod)

?abline
abline(lin.mod, col="blue", lwd=2)

cor(price, carat)

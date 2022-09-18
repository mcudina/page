diamonds<-read.csv("diamond.csv")
diamonds

plot(diamonds$Carats, diamonds$Price)

plot(diamonds$Carats, diamonds$Price, 
     col="peru",
     main="Carats vs. Price",
     xlab="Carats",
     ylab="Price")

lin.mod=lm(diamonds$Price ~ diamonds$Carats)
lin.mod
summary(lin.mod)

?abline
abline(lin.mod, col="red", lwd=2)

cor(diamonds$Carats, diamonds$Price)

dobson=c(269,246, 388, 354, 266, 303, 259, 295, 274, 249,
         271, 254)
length(dobson)

hist(dobson)
boxplot(dobson)
qqnorm(dobson,col="blue",xlim=c(-3,3),ylim=c(100,450)) 
qqline(dobson,col="red",lwd=2)

shapiro.test(dobson)

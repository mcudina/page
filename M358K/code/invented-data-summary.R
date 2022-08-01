data<-c(sample(1:100,50,replace=TRUE),rbinom(100,size=50,prob=0.45))
data.bar<-mean(data)
nsim<-length(data)

stripchart(data, method="stack", at=0, pch=20, col="steelblue",
           main="Stacked dotplot",
           xlab="Toy data",
           ylab="Counts")

hist(data)
hist(data, breaks=25)
hist(data, breaks=50)
hist(data, breaks=5)

s.squared<-sum((data-data.bar)^2)/(nsim-1)
var(data)

sqrt(var(data))
sd(data)

summary(data)

boxplot(data, col="salmon", pch=19, horizontal=TRUE)


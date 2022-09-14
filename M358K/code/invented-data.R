data<-c(sample(1:100, 50, replace=TRUE), rbinom(100, size=25, prob=0.4))

hist(data)
hist(data, breaks=25)
hist(data, breaks=5)
hist(data, breaks=50)

bp=boxplot(data, col="salmon", pch=19, horizontal=TRUE)
bp$out

stripchart(data, method="stack",
           at=0,
           pch=20,
           col="steelblue",
           main="Stacked dotplot",
           xlab="Toy data",
           ylab="Counts")

summary(data)

var(data)
s.squared=sum((data-mean(data))^2)/(length(data)-1)
s.squared

sd(data)
sqrt(s.squared)

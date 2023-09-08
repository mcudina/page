#synthetic data
data<-c(sample(1:100, 50, replace=TRUE), rbinom(100, size=25, prob=0.4))
data

#histogram
hist(data)
hist(data, breaks=25)
hist(data, breaks=50)
hist(data, breaks=5)

#stacked dot plot
stripchart(data, method="stack",
           at=0,
           pch=19,
           col="steelblue",
           main="Stacked Dot Plot",
           xlab="Toy Data",
           ylab="Counts")

#boxplot
bp=boxplot(data, 
           col="peru", 
           pch=19#,
           #horizontal=TRUE
           )
bp$out

#numerical summary
summary(data)

var(data)
sd(data)

s.squared=sum((data-mean(data))^2)/(length(data)-1)
s=sqrt(s.squared)
s

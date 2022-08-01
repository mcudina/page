# data set 
data<-c(17.2, 15.7, 24.9, 16.2, 18.5, 22.8)
n=length(data)

#assume that you know these come from a normal distribution
#we want an 80% confidence interval
C=0.80

## method I
x.bar=mean(data)
s=sd(data)
t.star=qt((1+C)/2, df=n-1)
t.star

##lower bound of CI
lower.bd=x.bar-t.star*s/sqrt(length(data))
lower.bd

##upper bound of CI
upper.bd=x.bar+t.star*s/sqrt(length(data))
upper.bd

## method II
t.test(data, conf.level = 0.80)

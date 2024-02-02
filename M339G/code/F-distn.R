#plotting the density 
curve(df(x, 2, 3), from=0, to= 10)
curve(df(x, 3, 2), from=0, to= 10)

#simulating from F
n.sim=100000
data=rf(n.sim, 3, 2)
hist(data)
summary(data)
boxplot(data)

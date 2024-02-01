#simulating some values from the F distribution
n.sims=10^6
data=rf(n.sims, 3,2)
hist(data, breaks=25)
summary(data)
boxplot(data)
#the density
curve(df(x, 3, 2), from=0, to=100)

#the pmf of a single fair Bernoulli trial
dbinom(0, size=1, prob=0.5)
dbinom(1, size=1, prob=0.5)
dbinom(75, size=1, prob=0.5)

#Binomial(2, 0.5)
dbinom(0, size=2, prob=0.5)
dbinom(1, size=2, prob=0.5)

#we can do many trials with creative probabilities
dbinom(345, 1000, 0.23)

#cumulative distribution function
#P[X <=1 ] with a single Bernoulli trial
pbinom(1, 1, 0.678)
#P[X <= 1] with X ~ Binomial(2,0.5)
pbinom(1, 2, 0.5)
#challenging numbers
pbinom(1145, 1500, 0.78)

#quantile function aka the inverse of the cdf
qbinom(0.75, 2, 0.5)

#simulations
#one simulated value
rbinom(1, 2, 0.5)
#a few simulation
rbinom(7, 2, 0.5)

#many simulated values from Binomial(20, 0.77)
nsim=10000
sims=rbinom(nsim, 20, 0.77)
sims
hist(sims, breaks=seq(-0.5, 20.5, 1),
     main="Binomial simulations",
     xlab="Possible values",
     ylab="Relative frequency",
     col="steelblue",
     prob=TRUE)

#check the simulator
new.sims=rbinom(nsim, 2, 0.5)
mean(new.sims==0)
dbinom(0, 2, 0.5)
mean(new.sims==1)
dbinom(1, 2, 0.5)
mean(new.sims==2)
dbinom(2, 2, 0.5)

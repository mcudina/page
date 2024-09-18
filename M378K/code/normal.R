?rnorm
#pdf
dnorm(0)
1/sqrt(2*pi)
#what if sigma is smaaaall
dnorm(0,0,0.0001)

#cdf
pnorm(0)
pnorm(1)-pnorm(-1)
pnorm(2)-pnorm(-2)
pnorm(3)-pnorm(-3)

#quantile function
qnorm(0.5)
qnorm(0.025)

#simulations
sims=rnorm(1000)
#sims
hist(sims)
summary(sims)
pnorm(1,mean=2,sd=1)

sims=rnorm(1000,mean=100,sd=20)
hist(sims)
summary(sims)

hist(sims, prob=TRUE)
curve(dnorm(x,mean=100, sd=20), col="red", add=TRUE)

#68-95-99.7 rule
pnorm(3,1,2)-pnorm(-1,1,2)
pnorm(5,1,2)-pnorm(-3,1,2)
pnorm(7,1,2)-pnorm(-5,1,2)

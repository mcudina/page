trials=1000
suc=0.4

nsims=1000
sims=rbinom(nsims, size=trials, prob=suc)
hist(sims, 15)

#setting the area under the histogram to 1
hist(sims, 15, prob=TRUE)

#finding the parameters of the bell curve
#the empirical mean
mu.hat=mean(sims)
#the empirical standard deviation
sigma.hat=sd(sims)
#the fitted density
curve(dnorm(x, mean=mu.hat, sd=sigma.hat), add=TRUE, lwd=2, col="green")

#the theoretical mean
mu=trials*suc
#the theoretical standard deviation
sigma=sqrt(trials*suc*(1-suc))
#the theoretical density
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, lwd=2, col="blue")

#the standard unit version
sims.std=(sims-mu)/sigma
hist(sims.std, 20, prob=TRUE)
curve(dnorm(x), add=TRUE, lwd=2, col="red")

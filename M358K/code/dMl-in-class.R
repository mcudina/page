trials=1000
suc=0.3

nsim=10000
sims=rbinom(nsim, size=trials, prob=suc)
hist(sims, 20, prob=TRUE)

#we could fit the curve
mu.hat=mean(sims)
sigma.hat=sd(sims)
curve(dnorm(x, mean=mu.hat, sd=sigma.hat), 
      lwd=2, col="red", add=TRUE)

#we could superimpose the theoretical normal density
mu=trials*suc
sigma=sqrt(trials*suc*(1-suc))
curve(dnorm(x, mean=mu, sd=sigma), 
      lwd=2, col="green", add=TRUE)

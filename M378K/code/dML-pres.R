trials=1000
suc=0.4

nsims=1000
sims=rbinom(nsims, size=trials, prob=suc)
hist(sims)

#area under the histogram should be 1
hist(sims, prob=TRUE)

#superimpose the normal density
#theoretical mean
mu=trials*suc
#theoretical standard deviation
sigma=sqrt(trials*suc*(1-suc))
curve(dnorm(x, mean=mu, sd=sigma), add=TRUE, lwd=2, col="green")

#fit the histogram 
#empirical mean
mu.hat=mean(sims)
#empirical standard deviation
sigma.hat=sd(sims)
curve(dnorm(x, mean=mu.hat, sd=sigma.hat), add=TRUE, lwd=2, 
      col="blue")

#in standard units
sims.std=(sims-mu)/sigma
hist(sims.std, breaks=25, prob=TRUE)
curve(dnorm(x), add=TRUE, lwd=2, col="red")

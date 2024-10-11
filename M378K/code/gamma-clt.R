#the gamma dist'n
?dgamma
#shape parameter
k=2
#scale parameter
tau=1

nsims=10000
#simulating from the gamma
sims=rgamma(nsims, k, scale=tau)
mu.hat=mean(sims)
mu.hat
v.hat=var(sims)
v.hat
tau.hat=v.hat/mu.hat
tau.hat
k.hat=mu.hat/tau.hat
k.hat
#plotting the histogram
hist(sims, breaks=25, prob=TRUE, ylim=c(0, dgamma(1, k.hat, scale=tau.hat)))
#superimposing the theoretical density
curve(dgamma(x, k, scale=tau), add=TRUE, col="purple", lwd=2)

#fitting the density curve
#moment matching
#mean of gamma = alpha/beta = mean(sims)
#variance of gamma = alpha/beta^2 = var(sims)
mu.hat=mean(sims)
v.hat=var(sims)

beta.hat=mu.hat/v.hat
beta.hat
alpha.hat=mu.hat*beta.hat
alpha.hat

#plot the fitted density
curve(dgamma(x, k.hat, scale=tau.hat), add=TRUE, col="blue", lwd=2)

#demo of the Central Limit Theorem
#define a function which calculates the average of 
#a simulated batch of gammas
avg.gamma<-function(n, k, tau){
  sims=rgamma(n, k, scale=tau)
  return(mean(sims))
}
#repeat this function many times
n.batches=7000
avgs=replicate(n.batches, avg.gamma(nsims, k, tau))
#plot the histogram
hist(avgs, col="bisque", prob=TRUE)
#theoretical parameters of the bell curve
mu.norm=k*tau
sigma.norm=sqrt(k*tau^2)/sqrt(nsims)
curve(dnorm(x, mean=mu.norm, sd=sigma.norm), lwd=2, col="red", add=TRUE)

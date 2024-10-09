#the gamma dist'n
?dgamma
#shape parameter
alpha=2
#rate parameter
beta=1

nsims=1000
#simulating from the gamma
sims=rgamma(nsims, alpha, beta)
mu.hat=mean(sims)
v.hat=var(sims)
beta.hat=mu.hat/v.hat
beta.hat
alpha.hat=mu.hat*beta.hat
alpha.hat
#plotting the histogram
hist(sims, breaks=25, prob=TRUE, ylim=c(0, dgamma(1, alpha.hat, beta.hat)))
#superimposing the theoretical density
curve(dgamma(x, alpha, beta), add=TRUE, col="purple", lwd=2)

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
curve(dgamma(x, alpha.hat, beta.hat), add=TRUE, col="blue", lwd=2)

#demo of the Central Limit Theorem
#define a function which calculates the average of 
#a simulated batch of gammas
avg.gamma<-function(n, a, b){
  sims=rgamma(n, a, b)
  return(mean(sims))
}
#repeat this function many times
n.batches=7000
avgs=replicate(n.batches, avg.gamma(nsims, alpha, beta))
#plot the histogram
hist(avgs, col="bisque", prob=TRUE)
#theoretical parameters of the bell curve
mu.norm=alpha/beta
sigma.norm=sqrt(alpha)/beta/sqrt(nsims)
curve(dnorm(x, mean=mu.norm, sd=sigma.norm), lwd=2, col="red", add=TRUE)

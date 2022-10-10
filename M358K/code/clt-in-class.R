#gamma parameters
#shape
alpha=2
#rate
beta=1

nsim=1000
#histogram of simulations
sims=rgamma(nsim, alpha, beta)
hist(sims, breaks=25, prob=TRUE, ylim=c(0,0.40))
curve(dgamma(x,alpha, beta), add=TRUE, col="red", lwd=2)

#moment matching
#alpha/beta=mean(sims)
#alpha/beta^2=var(sims)
mu.hat=mean(sims)
v.hat=var(sims)

beta.hat=mean(sims)/var(sims)
beta.hat
alpha.hat=beta.hat*mean(sims)
alpha.hat

#draw the fitted density
curve(dgamma(x, alpha.hat, beta.hat), 
      add=TRUE, col="green", lwd=2)

#Central Limit Theorem
#first, I create a function which
#calculates the average of a number 
#of simulated values from the gamma
avg.gamma<-function(nsims, a, b){
  sims=rgamma(nsims, a, b)
  return(mean(sims))
}
#repeat the function many times
avgs<-replicate(1000, avg.gamma(1000, alpha, beta))
#histogram of averages
hist(avgs, breaks=25, prob=TRUE, col="bisque")
#now I find the correct theoretical mean and sd
mu.norm=alpha/beta
sd.norm=sqrt(alpha)/beta
#now we draw the density 
curve(dnorm(x, mu.norm, sd.norm/sqrt(1000)), add=TRUE, col="red", lwd=2)

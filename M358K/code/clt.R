#parameters
#shape
alpha<-2
#rate
beta<-1

#first, I want to see what the histogram of the gamma 
#simulations looks like when its theoretical 
# density is superimposed
nsims<-10000
sims=rgamma(nsims, alpha, beta)
hist(sims, 25, prob=TRUE)
curve(dgamma(x,alpha,beta),add=TRUE, col="red",lwd=2)


#Central Limit Theorem
#first, I create a function which 
#draws a number of simulated values from the gamma and
#calculates their average
avg.gamma<-function(nsim, a, b){
  sims=rgamma(nsim, a, b)
  return(mean(sims))
}
#now, I replicate the above function nsim times
avgs<-replicate(nsims, avg.gamma(1000,alpha,beta))
#now, I draw a histogram of the above simulated averages
hist(avgs, 25, col="bisque", prob=TRUE)
#now, I look for the mean and standard deviation of the 
#normal distribution with which we approximate 
#using the theoretical mean of the gamma dist'n
mu=alpha/beta
#using the theoretical standard deviation 
#of the gamma dist'n
sigma=sqrt(alpha)/beta
#now, drawing the density curve for 
#the normal distribution
curve(dnorm(x, mu, sigma/sqrt(1000)), add=TRUE, 
      col="red", lwd=2)

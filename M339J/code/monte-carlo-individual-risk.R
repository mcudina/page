#n denotes the number of risks
n=100

#the simpler version of the model is 
#for the losses to be identically distributed
#for simplicity, let them be gamma(alpha=3,theta=10)
#then, the aggregate losses would be simply
agg.loss=sum(rgamma(n,shape=3,scale=10))
agg.loss

#to get a closer look at the distribution,
#let's make many simulations of the same random variable 
#first, we create a function to make the code easier
agg.loss.ftion<-function(){
  sum(rgamma(n,shape=3,scale=10))
}
#this is the number of simulations
nsim=1000
#now we replicate
sims=replicate(nsim, agg.loss.ftion())
#let's look at the histogram of the simulated values
hist(sims, breaks=40)
#the mean of the simulated values is the Monte Carlo estimate 
#of the mean od the aggregate losses
mean(sims)

#what is the theoretical mean of the aggregate losses?
n*3*10

#we can do more, though
#what is the Monte Carlo estimate of the probability that 
#aggregate losses exceed 3000
mean(sims>3000)
#luckily, in the special case of the gamma distribution, 
#we know exactly that the sum of independent gamma r.v.s
#with the same theta is gamma itself
#in this case, the aggregate losses will be gamma with 
#shape=3*n and scale=10
1-pgamma(3000, shape=3*n, scale=10)

#what is the 95th percentile?
quantile(sims, 0.95)
#what is the theoretical 95th quantile?
qgamma(0.95, shape=3*n, scale=10)

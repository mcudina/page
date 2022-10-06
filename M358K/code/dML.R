trials=100
suc=0.4

nsims=10000
sims=rbinom(nsims, trials, suc)
hist(sims, 20)

#make the area under the histogram equal to 1
hist(sims, 20, prob=TRUE)

#finding the parameters for the bell curve
#the empirical mean
mu.hat=mean(sims)
#the theoretical mean
mu=trials*suc
#the empirical sd
s=sd(sims)
#the theoretical sd
sigma=sqrt(trials*suc*(1-suc))

#the fitted density
curve(dnorm(x,mu.hat,s), add=TRUE, col="red", lwd=2)
#the approximate density by dML
curve(dnorm(x,mu,sigma), add=TRUE, col="green", lwd=2)

#same as above, but in standard units
sims.std=(sims-mu.hat)/s
hist(sims.std,20,prob=TRUE)
curve(dnorm(x), add=TRUE, col="red", lwd=2)

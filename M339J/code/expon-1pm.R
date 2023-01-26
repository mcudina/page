#draw simulated values from the exponential with parameter theta
theta=40

#number of simulated values
nsim=1000

#simulated values
sims=rexp(nsim, rate=1/theta)
#sims
hist(sims, breaks=25, col="pink",
     main="Simulated exponential",
     xlab="Simulated values")

#superimpose the exponential density
hist(sims, breaks=25, col="pink",
     main="Simulated exponential",
     xlab="Simulated values", prob=TRUE)
curve(dexp(x,rate=1/theta), col="blue", lwd=2, add=TRUE)
curve(dexp(x,rate=1/mean(sims)), col="green", lwd=2, add=TRUE)

mean(sims)

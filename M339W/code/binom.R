dbinom(1,size=2,prob=0.5)
pbinom(1,size=2,prob=0.5)
qbinom(0.75, size=2,prob=0.5)
qbinom(0.25, size=2, prob=0.5)

rbinom(1, size=2, prob=0.5)

nsim<-100
sims<-rbinom(nsim, size=20, prob=0.5)
#hist(sims)
#hist(sims,20)
hist(sims, breaks=seq(-0.5,20.5,1),
     main="Histogram of my simulated values 
     from Binomial(20,1/2)", 
     xlab="My simulated values", 
     ylab="Count")

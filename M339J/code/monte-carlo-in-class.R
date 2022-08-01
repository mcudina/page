### one Bernoulli trial
q=0.56

nsims=10000
sims=rbinom(nsims, size=1, prob=q)

## the expected value of a single Bernoulli trial
q

## the proportion of 1's in the simulated values
p.hat=mean(sims)
p.hat

## vary the number of simulations
props.vec=numeric(0)
indices=seq(100, 100000, 100)
for(nsim in indices){
  sim=rbinom(nsim, size=1, prob=q)
  props.vec=c(props.vec, mean(sim))
}
plot(indices, props.vec, type="l", col="blue")
abline(h=q, col="red")

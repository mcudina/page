#defining the parameters
mu.0=0
sigma=1

#setting the significance level
alpha=0.001

#creating simulated data
n.sim=10^4
data=rnorm(n.sim, mu.0, sigma)
#data

#running a `t.test` - by default the null is mu=0
test=t.test(data)
test$p.value

#indicator vector of rejections
n.batches=10000
ind=numeric(n.batches)

one.batch<-function(){
  data=rnorm(n.sim, mu.0, sigma)
  test=t.test(data)
  return(test$p.value<alpha)
}

all.batches=replicate(n.batches, one.batch())

mean(all.batches)

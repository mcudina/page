#significance level
alpha=0.1

#parameter of exponential
tau=2

#sample size
n=6

#critical values of Gamma
a=qgamma(alpha/2, n, scale=1/n)
a
b=qgamma(1-alpha/2, n, scale=1/n)
b

#one sample
data=rexp(n, rate=1/tau)
data

y.bar=mean(data)

theta.hat.l=y.bar/b
theta.hat.r=y.bar/a

if (theta.hat.l<tau && tau<theta.hat.r) {
  print("tau is in the confidence interval")
}

#many samples
n.loop=10^5
ind=numeric(n.loop)
#ind

for (i in 1:n.loop){
  data=rexp(n, rate=1/tau)
  data
  
  y.bar=mean(data)
  
  theta.hat.l=y.bar/b
  theta.hat.r=y.bar/a
  
  if (theta.hat.l<tau && tau<theta.hat.r) {
    ind[i]=1
  }
}

print(mean(ind))
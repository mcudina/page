one.loss<-function(lambda, min, max){
  n=rpois(1, lambda)
  x.s=runif(n, min, max)
  s=sum(x.s)
  return(s)  
}


xs = seq(from = 1800, to = 2500, by = 5)
plot_errors <- function( lambda = 25, color = 4, nsim = 10000, min=5, max=95){
  all.losses =  replicate(nsim, one.loss(lambda, min, max))
  nx = length(xs)
  er = numeric(nx)
  true.mean = lambda*(max+min)/2
  true.sd = sqrt(lambda*( 1/12*(max-min)^2+(0.5*(max+min))^2 ))
  for (i in 1:nx) { 
    sp = mean(all.losses> xs[i])
    np = 1-pnorm(xs[i], mean=true.mean, sd=true.sd)
    er[i]= abs((np - sp)/np)
  }
  plot(xs,er,cex = 0.3) 
  lines(xs,er, col = color)
}

plot_errors(lambda = 25, color = 4, nsim = 100000)




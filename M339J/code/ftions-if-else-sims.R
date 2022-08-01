#### toy function in R
addition<-function(x,y){
  x+y
}

print(addition(6,5))

replicate(3, addition(3,4))

#### if ... else
maximum<-function(x,y){
  if(x>y){
    print(x)
  } else {
    print(y)
  }
}

maximum(pi, exp(1))

#### discrete uniform simulation
spinner<-c(1,2,3,4)
spinner
### one fair spin
one.spin<-sample(spinner,1)
one.spin

nsims=10000
many.spins<-sample(spinner, nsims, replace=TRUE)
many.spins
hist(many.spins, main="Histogram of my spins",
     ylab="Number of spins",
     xlab="Possible spins", 
     col="pink")

table.spins<-table(many.spins)
table.spins
barplot(table.spins, col="violet")

### a fun example
war<-function(){
  p.1<-sample(c(1,2,3),1)
  print(p.1)
  p.2<-sample(c(1,2,3),1)
  print(p.2)
  if(p.1==p.2){
    print("tie")
  } else {
    if(p.1>p.2){
      print("one")
    } else {
      print("two")
    }
  }
}

war()

run<-replicate(nsims, war())
table.run=table(run)
table.run
barplot(table.run, col="magenta")


#### random number generation
### runif
sims.u<-runif(nsims)
hist(sims.u)

#### how to make a Bernoulli trial?
### inverse transform method
q=0.2
sims<-runif(nsims)
sims.bern=as.numeric(sims<q)
sims.bern
sum(sims.bern)
mean(sims.bern)
hist(sims.bern, col="lavender")
bern.table=table(sims.bern)
barplot(bern.table, col="skyblue")

### using rbinom
sims.2<-rbinom(nsims, size=1, prob=q)
mean(sims.2)
table.2<-table(sims.2)
barplot(table.2, col="beige")

war<-function(){
 p.1<-sample(c(1,2,3),1)
 print(p.1)
 p.2<-sample(c(1,2,3),1)
 print(p.2)
 if (p.1==p.2){
   print("tie")
 } else {
   if (p.1>p.2){
     print("one")
   } else {
     print("two")
   }
 }
}

war()

nsim=10000
many.wars=replicate(nsim, war())
many.wars=="tie"
sum(many.wars=="tie")/nsim

wars.tab=table(many.wars)

barplot(wars.tab, main="Many games of war", 
        col="steelblue")

#####################################################

dbinom(0,size=1,prob=0.5)
dbinom(1,size=1,prob=0.5)
dbinom(5,size=1,prob=0.5)

dbinom(1, size=2,prob=0.5)
pbinom(1, 2, 0.5)
qbinom(0.75, size=2, prob=0.5)
qbinom(0.25, size=2, prob=0.5)

rbinom(1, size=2, prob=0.5)

sims=rbinom(nsim, size=2, prob=0.5)
#sims
mean(sims==0)
mean(sims==1)
mean(sims==2)

new.sims=rbinom(nsim, size=20, prob=0.4)
hist(new.sims, breaks=seq(-0.5,20.5,1), 
     main="Binomial histogram", 
     col="Bisque")

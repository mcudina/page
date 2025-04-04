#this is one way to "toss a coin" in `R`
#a coin is heads (H) or tails (T)
coin=c("H","T")
#the command `sample` gives me a pseudo-random choice
(toss=sample(coin, 1))

#now, we create a running frequencies of how many Hs we say
#first, we create an empty numeric vector
many.tosses=numeric()
#initialize the sum of how many Hs
running.sum=0
#then, we do a `for` loop
for (i in 1:10000){
  toss=sample(coin,1)
  ind=(toss=="H")
  running.sum=running.sum+ind
  many.tosses=c(many.tosses, running.sum/i)
}
plot(many.tosses,
     main="Long-term frequencies",
     ylab="Running proportions",
     pch=20, col="blue")
abline(h=0.5, col="red", lwd=2)

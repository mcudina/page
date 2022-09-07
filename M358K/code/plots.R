sims=sample(1:25, 100, replace=TRUE)
sims
plot(sims)
plot(sims, pch=19, col="blue")
lines(sims, col="orange")

x.coord=seq(0, 20, 0.5)
y.coord=exp(x.coord)
plot(x.coord, y.coord, type="l", 
     col="red", lwd=2)

x.s=1:7
y.s=c(1,4,5,1,-1,6,7)
plot(x.s, y.s, pch=20, type="b")

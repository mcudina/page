sims<-sample(1:25,100, replace=TRUE)
sims
plot(sims)
plot(sims, col="blue", pch=20)
lines(sims,col="lightblue")

x.coord<-seq(0,10,0.05)
y.coord<-exp(x.coord)
plot(x.coord,y.coord, type="l")

x.coord<-1:5
y.coord<-c(4,1,2,5,7)
plot(x.coord,y.coord, pch=20)
lines(x.coord,y.coord)

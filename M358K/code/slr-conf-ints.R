beta.0<-2.5  ### theoretical paramater values
beta.1<-0.5
curve(beta.0+beta.1*x, 0, 25, lwd=3, col="green")

sigma<-1       #### std. dev of all errors is the same sigma


lambda<-1/25
domain<-rexp(1,lambda)
domain

sample.size<-10

errors<-rnorm(sample.size,mean=0,sd=sigma)
errors

x.coords<-runif(sample.size, min=0, max=domain)
x.coords

y.coords<-beta.0 + beta.1*x.coords+errors
y.coords

plot(x.coords,y.coords, cex=2, pch=20, col="blue", main="Simple least squares", ylab="Response", xlab="Explanatory", xlim=c(0, domain), ylim=c(0,beta.1*domain+beta.0))

abline(lm(y.coords ~ x.coords), lwd=1.5, col="red")
abline(beta.0,beta.1, lwd=2, col="green")

reg<-lm(y.coords ~ x.coords)

reg.all<-summary(reg)
reg.all

###################################### How to predict? ##############

newdata<-data.frame(x.coords=seq(0,domain,0.1))

conf<-predict(reg,newdata,interval="confidence")
pred<-predict(reg,newdata,interval="prediction")
all.ints<-cbind(conf,pred[,-1])

matplot(newdata,all.ints, type="l", lty=1, lwd=2, col=c("black", "red", "red","blue","blue"))
abline(beta.0,beta.1, lwd=2, col="green")

######################################### ANOVA ###############################

anova(reg)

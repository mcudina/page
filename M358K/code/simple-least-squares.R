beta.0<-2.5  ### theoretical parameter values
beta.1<-0.5
curve(beta.0+beta.1*x, 0, 25, lwd=3, col="green")

sigma<-1       #### std. dev of all errors is the same sigma

x<-5
y<-beta.0+beta.1*x+rnorm(1,mean=0,sd=1)
beta.0+beta.1*x
y

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

plot(x.coords,y.coords, cex=2, pch=20, col="blue", 
     main="Simple least squares", ylab="Response", xlab="Explanatory", xlim=c(0, domain), ylim=c(0,beta.1*domain+beta.0))

reg<-lm(y.coords ~ x.coords)
reg

abline(lm(y.coords ~ x.coords), lwd=2, col="red")
abline(beta.0,beta.1, lwd=2, col="green")


####### What is under the hood? ###### 
######################################

b.1<-cor(x.coords,y.coords)*sd(y.coords)/sd(x.coords)
b.1

b.0<-mean(y.coords)-b.1*mean(x.coords)
b.0

############## What if we want more information? #############
##############################################################

reg.all<-summary(reg)
reg.all

res<-reg.all$residuals
plot(reg.all$residuals, pch=20, col="blue")
abline(0,0)

sse<-sum(res^2)#### Sum of Squares due to Error (SSE)
sse

sst<-sum((y.coords-mean(y.coords))^2) #### Total Sum of Squares (SST)
sst

R.squared<-1-(sse/sst)   #### coefficient of determination aka multiple R-squared
R.squared                #### the closer to 1 the better the fit
                         ##### regression captures the proportion R of the variation in the reponse variable
            
sqrt(sse/(sample.size-2))              
                         
pdf("plots.pdf")
par(mfrow=c(2,2))

plot(x.coords,y.coords, cex=2, pch=20, col="blue", 
     main="Simple least squares", ylab="Response", xlab="Explanatory", xlim=c(0, domain), ylim=c(0,beta.1*domain+beta.0))
abline(lm(y.coords ~ x.coords), lwd=1.5, col="red")
abline(beta.0,beta.1, lwd=2, col="green")

plot(reg.all$residuals, pch=20, col="blue", ylab="Residuals", main="Residual plot")
abline(0,0)


################ What about the estimation error in the slope parameter? ##########################
###################################################################################################

nsim<-1000
counter<-0
slope.vector<-numeric()

while(counter<nsim){
	counter<-counter+1;
	errors<-rnorm(sample.size,mean=0,sd=sigma);
	x.coords<-runif(sample.size, min=0, max=domain);
	y.coords<-beta.0 + beta.1*x.coords+errors;
	b.1<-cor(x.coords,y.coords)*sd(y.coords)/sd(x.coords);
	slope.vector<-rbind(slope.vector,b.1)
}

slope.vector
hist(slope.vector, breaks=20, 
     main="Estimates of the slope", xlab="Slope")
dev.off()

mean(slope.vector)

############## Is there theory to support this? ################################################



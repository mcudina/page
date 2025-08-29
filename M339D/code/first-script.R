#let's define x to be 4
x=4

#we define y to be 7
y<-7

#z becomes the difference between the two
(z=x-y)

#now we look at vector stuff!
p=seq(1,7,0.5)
print(p)

p[-c(2,4)]

exp(p)

2*p

length(p)

(r=-1:11)

(p+r)

(s=seq(1,19, 2))

v=c(2,5)

w=s+v
w

(w.1=c(w,897))

w.1[3]=pi
w.1

append(w.1,-4)
(w.1)
w.1=append(w.1,-4)
w.1

mesh=seq(0,2,0.01)
y=exp(mesh)

plot(y)

plot(mesh, y)

plot(mesh, y, type="l")

plot(mesh, y, type="l", col="peru", lwd=2)

plot(mesh, y, type="l", col="peru", lwd=2, 
     main="Our exponential plot")

plot(mesh, y, type="l", col="peru", lwd=2, 
     main="Our exponential plot",
     xlab="A fine mesh of points",
     ylab="Function values")

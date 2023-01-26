varb=3

new.varb=varb/6

x=7
y=exp(x)

#find the sum of cubes of the first 12 numbers
vec=1:12

#for loop
s=0
for (i in vec){
  s=s+i^3
}
print(s)

#in `R` we can do better
sum(vec^3)

#or
sum((1:12)^3)

#define a toy function
mult<-function(x, y, z){
  x*y*z
}
mult(2,3,5)

replicate(3, mult(1,2,4))

#define another toy function
#d denotes the deductible
d=100
pmt<-function(x){
  if (x<=d){
    return(0)
  } else {
    return(x-d)
  }
}

pmt(75)
pmt(178)

max(234-d,0)

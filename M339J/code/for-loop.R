varb=1+2
new.varb=varb^2
print(new.varb)

# create a sum of cubes of the first ten natural numbers
vec=1:10
vec.3=vec^3
s.vec=sum(vec.3)
print(s.vec)

# in R we can simply do this
simple=sum((1:10)^3)
print(simple)

# a practice for loop
sigma=0
for (i in 1:10){
  sigma=sigma+i^3
}
print(sigma)


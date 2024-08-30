#first define x as 8
x=8

#second set y to 7
y=7

#z is a difference between x and y
z=x-y

#sequence of odd numbers from 1 to 20
v=seq(1,20,2)
v
sum(v)

#toy function in R
addition<-function(x,y){
  return(x+y)
}

addition(7,3)

replicate(10,addition(7,4))

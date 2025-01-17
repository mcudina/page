#we define x to be 4
x=4

#set y to be 7
y=7

#z is the difference between the two
(z=x-y)

#sequence of odd numbers from 1 to 20
v=seq(1, 20, 2)
v
#how would we calculate the sum of squares of all of these odds?
sum(v^2)

#toy function in `R`
addition<-function(a,b){
  return(a+b)
}

addition(3,2)

replicate(10, addition(7,4))

#another toy function in `R`
maximum<-function(a,b){
  if (a>b){
    return(a)
  } else {
    return(b)
  }
}

maximum(-3,4)

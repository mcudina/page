#we will define that x is 8
x=8

#set y to 7
y=7
#set z to y minus x
z=y-x

#sequence of odd numbers from 1 to 20
v=seq(1,20,2)
v
sum(v)

#toy function in R
addition<-function(x,y){
  x+y
}

print(addition(17,3))

replicate(4, addition(3,5))

addition<-function(x,y){
  x+y
}

print(addition(6,5))
addition(1,2)

replicate(4,addition(5,2))

maximum<-function(x,y){
  if(x>y){
    print(x)
  } else {
    print(y)
  }
}

maximum(4.5,-7)

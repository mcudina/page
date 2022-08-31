mult<-function(x,y){
  x*y
}

mult(2,3)

replicate(3,mult(1,4))

maximum<-function(x,y){
  if(x>y){
    print(x)
  } else {
    print(y)
  }
}

maximum(exp(1), log(10))

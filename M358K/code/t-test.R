# single sample
data<-c(11.17, 12.96, 10.37,  6.92, 10.83,  9.15, 11.79, 
        10.68,  8.34,  8.95, 11.40, 10.415568)
n<-length(data)
n

tt<-t.test(data, mu=10)
tt
tt$p.value
tt$parameter

#two samples
data1<-rnorm(15, mean=10, sd=2)
data2<-rnorm(20, mean=10, sd=1)

tt2<-t.test(data1,data2)
tt2
tt2$p.value
tt2$parameter

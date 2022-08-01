data<-sample(1:35, 100, replace=TRUE)
stripchart(data, at=0, pch=20, 
           method="stack", col="steelblue",
           main="Sample stacked dotplot",
           xlab="Random values",
           ylab="Stacks")


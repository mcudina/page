#possible results
tetra=c(1,2,3,4)

#specify the distribution
probs=c(1/6, 1/3, 1/6, 1/3)

#put everything into a table
tab=matrix(probs, ncol=4)
tab
colnames(tab)=as.character(tetra)
tab

#plotting the distribution
barplot(tab,
        main="Distribution of a loaded tetrahedron",
        xlab="Possible outcomes",
        ylab="Probabilities",
        col="blue")

#what if we want to repeat this experiment?
n.rolls=10^5
many.rolls=sample(tetra, n.rolls, replace=TRUE, prob=probs)
many.rolls
hist(many.rolls, 
     main="Many rolls of tetrahedron",
     xlab="Possible outcomes",
     col="peru",
     breaks=seq(0.5, 4.5, 1))

#checking the fit
emp.tab=table(many.rolls)
emp.tab

barplot(emp.tab,
        main="Distribution of a loaded tetrahedron",
        xlab="Possible outcomes",
        ylab="Frequencies",
        col="lightblue")

full.tab=rbind(tab, emp.tab/n.rolls)
full.tab

barplot(full.tab,
        main="Distribution of a loaded tetrahedron",
        xlab="Possible outcomes",
        ylab="Frequencies",
        col=c("lightblue", "pink"),
        beside=TRUE)

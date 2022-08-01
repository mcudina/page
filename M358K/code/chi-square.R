## A Pew Internet survey asked college presidents 
## whether or not they believed that online courses 
## offer an equal educational value when compared 
## with courses taken in the classroom. 
## The presidents were classified by 
## the type of educational institution. 

pres <- as.table(rbind(c(36, 50, 66, 54), c(62, 48, 34, 45)))
dimnames(pres) <- list(answer = c("Yes", "No"),
                    school = c("Private-4","Public-4", "Private-2", "Profit"))
pres

barplot(pres)

mosaicplot(pres, las=1, shade=TRUE)

heatmap(pres, Rowv=NA, Colv=NA, cexCol =1, cexRow=2)

Xsq <- chisq.test(pres)  # Feeds test summary into Xsq

Xsq$observed   # observed counts 
Xsq$expected   # expected counts under the null

Xsq

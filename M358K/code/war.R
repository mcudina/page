cards=1:3
war<-function(){
 p.1<-sample(cards, 1)
 p.1
 p.2<-sample(cards, 1)
 p.2
 if (p.1==p.2){
   print("tie")
 } else {
   if (p.1>p.2){
     print("one")
   } else {
     print("two")
   }
 }
}

war()

nsim=10000
many.wars=replicate(nsim, war())
sum(many.wars=="tie")

wars.tab=table(many.wars)
wars.tab
barplot(wars.tab,
        main="Lots of games of war",
        col="bisque")

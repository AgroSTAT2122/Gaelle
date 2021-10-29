library(FactoMineR)
data(decathlon)
summary(data)
View(decathlon)
don1<-decathlon[,1:10]
don2<-decathlon[,1:10]
data <- cbind(don1,don2)
res.MFA<-MFA(data, group=c(10,10))
res.MFA$group
plot.MFA(res.MFA, graph.type = "classic", choix = "group")
res.PCA<-PCA(decathlon[,1:10])
data1<-res.PCA$ind$coord
data2<-res.PCA$ind$coord
data3<-cbind(data1,data2)
res.MFA<-MFA(data3, group=c(5,5), type=c("c","c"))
plot.MFA(res.MFA, graph.type = "classic", choix = "group")
res.PCA.dim<-PCA(data1)
sum(res.PCA$eig[,1])       

# commentaire  de test
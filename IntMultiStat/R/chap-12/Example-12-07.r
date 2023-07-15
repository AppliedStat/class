
data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T12-4.DAT")

X = data.matrix(data[,1:8])

R = cor(X)  ## correlation is used for the distance measure 

HC =  hclust( as.dist(1-R) , method="complete")   ## Note 1-R is used. 


#  require(graphics)
 plot(HC)
 plot(HC, hang=-1)


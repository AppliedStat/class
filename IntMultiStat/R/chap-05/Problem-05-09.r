## it is a very tricky R program. 

 n <- max(count.fields("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P5-9.dat")) 

 tmp = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/P5-9.dat", 
                 fill=T, col.names=1:n)

 tmp2 = data.matrix(tmp)

 tmp2 [ upper.tri(tmp2) ] = t(tmp2)[ upper.tri(tmp2) ] 

 tmp2 



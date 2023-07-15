# Example 9.8 on Page 505 

# Reading the Lower Triangular Matrix 
 p = max(count.fields("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/E9-8.dat"))
 tmp =     read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/E9-8.dat",
                 fill=T, col.names=1:p)
 tmp2 = data.matrix(tmp)
 tmp2 [ upper.tri(tmp2) ] = t(tmp2)[ upper.tri(tmp2) ]

 R = tmp2 

 
  OUT = factanal(covmat=R, factors=2, rotation="none")

# Loading matrix (OUT$loadings)
 L = loadings(OUT)

#  communalities  (OUT$uniqueness = Specific variances)
 1 - OUT$uniqueness
 
 ## see the coordinate (F1,F2) of 4 (Arithmetic)
 phi =  atan( -0.273/0.740 ) * 180 / pi    ## around 20 deg


 th = phi/180*pi

 Rot = matrix( c(cos(th), sin(th),  -sin(th),cos(th)), nrow=2)

 L %*% Rot

 ## Rotation using Varimax method 
 varimax(L)



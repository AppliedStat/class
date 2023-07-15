# Example 12.3  on Page 682 

# Type data:
 p = 5; D = matrix( ncol=p, nrow=p)
 D[ lower.tri(D) ]  = c(9, 3, 6, 11, 7, 5, 10, 9, 2, 8)

# Make D matrix from the above data.
 diag(D) = 0
 D[ upper.tri(D) ] =   t(D)[ upper.tri(D) ]
# Check D
D


HC =  hclust( as.dist(D), method="single")



#  require(graphics) may be needed 
 plot(HC)
 plot(HC, hang=-1)



## NOTE: check ?dendrogram 
dend1 = as.dendrogram(HC)
par(mfrow =  c(2,2), mar = c(5,2,1,4))
plot(dend1)
## "triangle" type and show inner nodes:
plot(dend1, nodePar = list(pch = c(1,NA), cex = 0.8, lab.cex = 0.8),
      type = "t", center = TRUE)
plot(dend1, edgePar = list(col = 1:2, lty = 2:3),
     dLeaf = 1, edge.root = TRUE)
plot(dend1, nodePar = list(pch = 2:1, cex = .4*2:1, col = 2:3),
     horiz = TRUE)


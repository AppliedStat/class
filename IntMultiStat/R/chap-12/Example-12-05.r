# Example 12.5  on Page 687 

# Type data:
 p = 5; D = matrix( ncol=p, nrow=p)
 D[ lower.tri(D) ]  = c(9, 3, 6, 11, 7, 5, 10, 9, 2, 8)

# Make D matrix from the above data.
 diag(D) = 0
 D[ upper.tri(D) ] =   t(D)[ upper.tri(D) ]
# Check D
D


HC =  hclust( as.dist(D), method="complete")


#  require(graphics)
 plot(HC)
 plot(HC, hang=-1)





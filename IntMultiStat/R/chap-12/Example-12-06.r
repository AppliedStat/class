# Example 12.6  on Page 687 

# Type data:
 p = 11; D = matrix( ncol=p, nrow=p)
 D[lower.tri(D)] = c(2,2,7,6,6,6,6,7,9,9, 1,5,4,6,6,6,7,8,9, 6,5,6,5,5,6,8,9,
                     5,9,9,9,10,8,9, 7,7,7,8,9,9, 2,1,5,10,9, 1,3,10,9, 4,10,9, 10,9, 8)

# Make D matrix from the above data.
 diag(D) = 0
 D[ upper.tri(D) ] =   t(D)[ upper.tri(D) ]
# Check D
D

languages = c("E", "N", "Da", "Du", "G", "Fr", "Sp", "I", "P", "H", "Fi")
rownames(D) = languages
colnames(D) = languages

HC =  hclust( as.dist(D), method="complete")


#  require(graphics)
 plot(HC)
 plot(HC, hang=-1)







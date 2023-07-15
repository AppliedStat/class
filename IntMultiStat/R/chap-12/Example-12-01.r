# Example 12.1  on Page 676 

library(cluster)

# Type data:
x = matrix( c(0,1,0,0,1, 0,1,1,0,1, 0,1,0,1,1, 1,0,1,0,0, 1,1,1,1,0, 1,0,0,1,0), ncol=6)


Dissimilarities = daisy(x, metric= "gower" )

Similarities = 1 - Dissimilarities 

data.matrix( Similarities )





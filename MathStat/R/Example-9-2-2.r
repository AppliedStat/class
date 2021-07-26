#======================================================
# Example 9.2.2 on Page 436
#   Test for Homogeneity 
#------------------------------------------------------
U = c(25, 31, 20, 42, 39, 19, 35, 36, 44, 26, 
      38, 31, 29, 41, 43, 36, 28, 31, 25, 38 )
V = c(28, 17, 33, 25, 31, 21, 16, 19, 31, 27, 
      23, 19, 25, 22, 29, 32, 24, 20, 34, 26 )

# Make tally table
BrandU = table( cut(U, breaks=c(-Inf, 23.5, 28.5, 34.5, Inf) ) )
BrandV = table( cut(V, breaks=c(-Inf, 23.5, 28.5, 34.5, Inf) ) )
Data = rbind(BrandU, BrandV)
Data

rownames(Data) = c("Braud U", "Bruan V")
colnames(Data) = c("A1", "A2", "A3", "A4")  
# Let's follow the textbook Data (not needed tough).

# Turn off Yates's continuity correction for 2x2 table.
chisq.test(Data, correct=FALSE)  


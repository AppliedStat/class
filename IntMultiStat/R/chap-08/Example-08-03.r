# Example 8.3 on Page 443

data = read.table("https://raw.githubusercontent.com/AppliedStat/class/master/IntMultiStat/data/T8-5.DAT")

X = data.matrix(data)

colMeans(X)

var(X)

OUT1 = prcomp(X)

# Note: compare prcomp(X) and eigen( var(X) )
summary(OUT1)

# A scree plot with eigenvalues
eigenvalues = OUT1$sdev^2
plot(eigenvalues, type="l")
points(eigenvalues, pch=20 )  # cosmetic 

# A scree plot using screeplot( ) #- the similar to the above
screeplot(OUT1)
screeplot(OUT1, type="lines" )  # cosmetic 

##===================================================================
## Comparare  prcomp() versus princomp()
##-------------------------------------------------------------------

OUT2 = princomp(X)  #

OUT1  # prints eigen vectors 
OUT2  # does not print eigen vectors 

loadings(OUT2) # for eigen vectors 

summary(OUT1)
summary(OUT2)

#---------------------------------

OUT1[[1]]^2 
OUT2[[1]]^2 

eigen( var(X) )$values   # eigenvalues using S (unbiased)

n = nrow(X)
Sn = var(X) * (n-1)/n
eigen(Sn)$values         # eigenvalues using Sn (MLE. biased)

# So, eigenvalues are different, but eigenvectors are the same 




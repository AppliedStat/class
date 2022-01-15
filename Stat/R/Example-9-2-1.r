#======================================================
# Example 9.2.1 on Page 434
#   Test for Homogeneity 
#------------------------------------------------------
Group1 = c(8, 13, 16, 10, 3)
Group2 = c(4,  9, 14, 16, 7)

Data = rbind(Group1, Group2) 
Data

rownames(Data) = c("Group I", "Group II")
colnames(Data) = c("A", "B", "C", "D", "F")
Data

n1 = sum(Group1); n2 = sum(Group2)
p = (Group1+Group2)/(n1+n2)
E = rbind( n1*p, n2*p )

cbind(Data, E)

colnames(E) = c("A", "B", "C", "D", "F")  # Not needed. Only facelift.
cbind(Data, E)

O = Data # Not need. Only for notational convenience.
X2 = sum( (O-E)^2 / E )
X2 

critical.value = qchisq(1-0.05, df=4)
p.value = 1-pchisq(X2, df=4)
p.value

#===============================
# Using R function: chisq.test()
#-------------------------------

# Estimate pi
pi = (Group1+Group2) / (n1+n2) 
chisq.test(Data, p=pi, correct=FALSE) 

# Even more simple.
chisq.test(Data, correct=FALSE)   







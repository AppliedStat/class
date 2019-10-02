#
#======================================================
# Exercise 9.2.1 on Page 441
#   Test for Homogeneity 
#------------------------------------------------------
Group1 = c(95, 36, 71, 21, 45, 32)
Group2 = c(53, 26, 43, 18, 32, 28)

Data = rbind(Group1, Group2) 
Data

rownames(Data) = c("Group I", "Group II")
Data

chisq.test(Data, correct=FALSE)   # Turn off Yates's continuity correction for 2x2 table.



###################################################################
# Homegemeity Test
n1 = sum(Group1)
n2 = sum(Group2)
n = n1 + n2
p = apply(Data, 2, sum ) / (n1+n2) 

E = rbind(p*n1,p*n2)
O = Data 

sum( (O-E)^2/E )

chisq.test(Data, p=c(p,p), correct=FALSE)   # Turn off Yates's continuity correction for 2x2 table.


###################################################################
# Homegemeity Test


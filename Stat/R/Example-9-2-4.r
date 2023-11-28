#======================================================
# Example 9.2.4 on Page 439
#   Test for Indenpendence 
#------------------------------------------------------
Group1 = c(9,1)
Group2 = c(5,5)
Group3 = c(1,9)

Data = rbind(Group1, Group2, Group3)
Data

rownames(Data) = c("Group 1", "Group 2", "Group 3")
colnames(Data) = c("L", "H")
Data

n   = sum(Data)
pi. = apply(Data, 1, sum) / n
p.j = apply(Data, 2, sum) / n

E = n * outer ( pi.,  p.j )
O = Data

Q = sum( (O-E)^2 / E )
Q 

h = ncol(Data)
k = nrow(Data)

df = (k-1)*(h-1)

alpha = 0.05
qchisq(1-alpha, df=df)

# NOTE:  Q > qchisq(1-alpha, df=df)
 

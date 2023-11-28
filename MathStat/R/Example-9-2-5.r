#======================================================
# Example 9.2.5 on Page 440
#   Test for Indenpendence 
#------------------------------------------------------
Group1 = c(6, 11, 16, 14, 13)
Group2 = c(5,  9,  8,  6,  2)

Data = rbind(Group1, Group2)
Data

rownames(Data) = c("Group 1", "Group 2")
colnames(Data) = c("27-29", "29-31", "31-33", "33-35", "35 and over")
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

# NOTE:  Q < qchisq(1-alpha, df=df)
 

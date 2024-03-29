#======================================================
# Example 9.2.3 on Page 437
#   Test for Indenpendence 
#------------------------------------------------------
Male   = c(21, 16, 145,  2, 6)
Female = c(14,  4, 175, 13, 4)

Data = rbind(Male, Female)
Data

rownames(Data) = c("Male", "Female")
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

alpha = 0.01
qchisq(1-alpha, df=df)

# NOTE:  Q > qchisq(1-alpha, df=df)
 

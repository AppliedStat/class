## ==========================
## Example 9.7-3 on Page 481
## --------------------------

D = c( 8, 13, 12, 13, 14,  5, 14, 15, 11, 13,
      10,  8, 10, 11, 12, 11,  6,  7, 12, 14)
n = c(56, 55, 58, 56, 57, 54, 56, 57, 54, 55,
      57, 59, 54, 55, 56, 57, 54, 58, 58, 58)

pbar = sum(D) / sum(n)

LCL = pbar - 3 * sqrt(pbar*(1-pbar)/56)
 CL = pbar 
UCL = pbar + 3 * sqrt(pbar*(1-pbar)/56)

c(LCL, CL, UCL)


###################
library(rQCC)

result = acc(D, n, nk=56)
result 
summary(result)

plot(result)





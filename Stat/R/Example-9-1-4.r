## ==========================
## Example 9.1.4 on Page 430
## --------------------------
# H0: Exponential(theta=20) versus H1: not exponential
#     Note: theta=20 is given.
# Data from Page 241
##------------------------------------------------------
data = c( 30,17,65, 8,38,35, 4,19,  7,14,12, 4, 5, 4, 2,
           7, 5,12,50,33,10,15, 2, 10, 1, 5,30,41,21,31,
           1,18,12, 5,24, 7, 6,31,  1, 3, 2,22, 1,30, 2,
           1, 3,12,12, 9,28, 6,50, 63, 5,17,11,23, 2,46,
          90,13,21,55,43, 5,19,47, 24, 4, 6,27, 4, 6,37,
          16,41,68, 9, 5,28,42, 3, 42, 8,52, 2,11,41, 4,
          35,21, 3,17,10,16, 1,68,105,45,23, 5,10,12,17 )

# Make tally table
 Breaks = c(0, 9, 18, 27, 36, 45, 54, 63, 72, Inf) 
 table( cut(data, breaks=Breaks ) )

CDFs = pexp( Breaks, rate=1/20)
Prob.in.class = diff(CDFs)

n = length(data)

O = as.numeric ( table(cut(data, breaks=Breaks ) ) )
E = n*Prob.in.class
cbind( Breaks[-length(Breaks)], Breaks[-1], O, E, Prob.in.class )

tmp = cbind( O, E, Prob.in.class )
rownames(tmp) = names( table(cut(data,breaks=Breaks)) )  # Facelift. 
tmp 

Q = sum ( (O-E)^2 / E )
Q 

df = length(E) - 1 
df 

qchisq(1-0.05, df=8)

p.value = 1-pchisq(Q, df=8)
p.value 

#-----------------------------
chisq.test(O, p=Prob.in.class)   # Warning message due to small values in E. 

#======================================================
# Same problem but theta is NOT given. 
# H0: Exponential(theta) versus H1: not exponential
#     Note: theta is NOT given. 
#------------------------------------------------------
xbar = mean(data)
xbar 

CDFs = pexp( Breaks, rate=1/xbar)  # Different from the above. 
Prob.in.class = diff(CDFs)

E = n*Prob.in.class   # Note: O is the same becuase these are observations.

tmp2 = cbind( O, E, Prob.in.class )
rownames(tmp2) = names( table(cut(data,breaks=Breaks)) )  # Facelift.
tmp2   # Slightly different from the above. 

Q2 = sum ( (O-E)^2 / E )
Q2

df2 = length(E) - 1 - 1 # Due to the parameter estimation under H0
df2

qchisq(1-0.05, df=7)   # Be careful. df=7

p.value2 = 1-pchisq(Q, df=7)
p.value2

#-----------------------------
# The following can be used only for Q. 
#  Not for df or p-value.
chisq.test(O, p=Prob.in.class)   

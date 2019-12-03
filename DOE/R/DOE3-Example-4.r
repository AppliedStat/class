################################################
# Example 3.4 on Page 83 of Kim
################################################


# ==============================================
# Reading Data
# ==============================================
Y1 = c(2.4, 2.7, 3.1, 3.1)
Y2 = c(0.7, 1.6, 1.7, 1.8)
Y3 = c(2.4, 3.1, 5.4, 6.1)
Y4 = c(0.3, 0.3, 2.4, 2.7)
Y5 = c(0.5, 0.9, 1.4, 2.0)
Y = c(Y1, Y2, Y3, Y4, Y5)
n = length(Y1)
treat = factor( rep(LETTERS[1:5], rep(n,5)) )


# ==============================================
# Calculating SStr 
# ==============================================

# ----------------------------------------------
# Calculating SStr with aov() function
# ----------------------------------------------
myaov = aov(Y~treat)
summary(myaov)
SStr = summary(myaov)[[1]][["Sum Sq"]][1]
SStr

# ----------------------------------------------
# Calculating SStr manually
# ----------------------------------------------
Yi.bar = c(mean(Y1), mean(Y2), mean(Y3), mean(Y4), mean(Y5))
Ybarbar = mean(Y)
SStr = sum( n*(Yi.bar-Ybarbar)^2 )
SStr

# ==============================================
# Decomposition of SStr with Contrasts
# ==============================================

# ----------------------------------------------
# Orthogonal contrasts (manual contrasts)
# ----------------------------------------------
a1 = c(1, -1/4, -1/4, -1/4, -1/4)
a2 = c(0,    1, -1/3, -1/3, -1/3)
a3 = c(0,    0,    1, -1/2, -1/2)
a4 = c(0,    0,    0,    1,   -1)

contrasts(treat) = cbind(a1,a2,a3,a4)
contrasts(treat) 

# Check the validity of contrasts (sum=0)
cnt = contrasts(treat) 
apply(cnt, 2, sum)

# Check the orthogonality 
crossprod(cnt)

# Check the decomposition of SStr
myaov = aov( Y ~ treat )
summary.lm(myaov)

MSE = summary(myaov)[[1]][["Mean Sq"]][2]
MSE 
t.stat = summary.lm(myaov)[[4]][-1,3]
SStr.for.contrast = t.stat^2 * MSE
SStr.for.contrast
sum(SStr.for.contrast)  # Note: SStr = 27.007 

# ----------------------------------------------
# Decomposition of SStr with Contrasts using (t-test statistics)
# ----------------------------------------------
# Check the t-test statistics 
T1 = sum(a1*Yi.bar) / sqrt(MSE* sum(a1^2/n) )
T2 = sum(a2*Yi.bar) / sqrt(MSE* sum(a2^2/n) )
T3 = sum(a3*Yi.bar) / sqrt(MSE* sum(a3^2/n) )
T4 = sum(a4*Yi.bar) / sqrt(MSE* sum(a4^2/n) )
c(T1,T2,T3,T4)
c(T1,T2,T3,T4)^2 * MSE 
sum( c(T1,T2,T3,T4)^2 * MSE )


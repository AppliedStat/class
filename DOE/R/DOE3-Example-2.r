# ##############################################
# Example 3.6 on Page 97 of Kim
# ##############################################

# ==============================================
# Reading Data 
# ==============================================
Y1 = c(25.7, 27.2, 29.9, 28.5, 29.4, 28.3)           # Blue
Y2 = c(26.8, 27.9, 23.7, 25, 26.3, 24.8, 25.7, 24.5) # Brown
Y3 = c(26.4, 24.2, 28.0, 26.9, 29.1)                 # Green
Y = c(Y1, Y2, Y3)
n1 = length(Y1); n2 = length(Y2); n3 = length(Y3)


# ==============================================
# ANOVA with aov() function with factor
# ==============================================
# Check the input
color = factor( rep(c("Blue","Brown","Green"), c(n1,n2,n3)) )
levels(color)
cbind(Y,color)

# Plots
# stripchart(Y~color, vertical=T)
# boxplot(Y~color, ylab="Flicker")

myaov = aov(Y ~ color)
summary(myaov)

# mu.hat and tau.hat 
mui = tapply(Y, color, mean)
tau = mui - mean(Y)
cbind(mui, tau)

# Diagnostic
# par ( mfrow=c(2,2) )
# plot(myaov)


# ==============================================
# ANOVA with lm( ) with factor
# ==============================================
color = factor( rep(c("Blue","Brown","Green"), c(n1,n2,n3)) )
mylm = lm (Y ~ color)
anova(mylm)    # same as the summary(myaov) above
summary(mylm)  # ANOVA is OK, but parameter estimates are not

# ==============================================
# Regression: Cell-means coding
# ==============================================
# Cell-means coding
z1 = rep( c(1,0,0), c(n1,n2,n3) )
z2 = rep( c(0,1,0), c(n1,n2,n3) )
z3 = rep( c(0,0,1), c(n1,n2,n3) ) 

# under H0
mylm0 = lm( Y ~ 1 )
anova(mylm0)

# under H1 (Note: no-intercept model)
mylm1 = lm( Y ~ 0 + z1 + z2 + z3 )
anova(mylm1)

# mu.hat and tau.hat 
mui = coef(mylm1)
tau = mui - mean(Y)
cbind(mui, tau)

# Difference between H0 and H1  (Note: anova() function)
anova(mylm0, mylm1)

# ---------------------------------------------
# From H0
SSE0 = 61.307; df0  = 18

# From H1
SSE1 = 38.3  ; df1  = 16
Fstat = (SSE0-SSE1)/(df0-df1) / ( SSE1/df1 )
pf(Fstat, df0-df1, df1, lower.tail=FALSE)
# ---------------------------------------------


# ==============================================
# Regression: factor-effect model (Wrong)
# ==============================================
# Effect coding (factor-effect model)
z1 = rep( c(1,0,-1), c(n1,n2,n3) ) # This is only for balanced sample
z2 = rep( c(0,1,-1), c(n1,n2,n3) ) # This is only for balanced sample

# under H0
mylm0 = lm( Y ~ 1 )
anova(mylm0)

# under H1 (note: with intercept)
mylm1 = lm( Y ~ 1 + z1 + z2)
mylm1    # beta0 is not a grand mean.
anova(mylm1)

mu0 = coef(mylm1)[1]
tau = c( coef(mylm1)[-1], 0-sum(coef(mylm1)[-1]) )
mui = c(mu0+tau)
cbind(mui, tau)

# ---------------------------------------------
# Difference between H0 and H1
anova(mylm0, mylm1)

# ---------------------------------------------
# From H0
SSE0 = 61.307; df0  = 18

# From H1
SSE1 = 38.310; df1  = 16
Fstat = (SSE0-SSE1)/(df0-df1) / ( SSE1/df1 )
pf(Fstat, df0-df1, df1, lower.tail=FALSE)
# ---------------------------------------------


# ==============================================
# Regression: effect coding (correct)
# ==============================================
# Effect coding (factor-effect model)

# Correct Effect coding
z1 = rep( c(1,0,-n1/n3), c(n1,n2,n3) )   
z2 = rep( c(0,1,-n2/n3), c(n1,n2,n3) )  

# under H0
mylm0 = lm( Y ~ 1 )
anova(mylm0)

# under H1 (note: with intercept)
mylm1 = lm( Y ~ 1 + z1 + z2)
mylm1   # beta0 is a grand mean.
anova(mylm1)

mu0 = coef(mylm1)[1]
c(mu0, mean(Y))
tau = c( coef(mylm1)[-1], -sum(c(n1,n2)*coef(mylm1)[-1])/n3 )
mui = c(mu0+tau)
cbind(mui, tau)   

# Difference between H0 and H1
# Note: ANOVA decomposition is the same as the cell-means coding
anova(mylm0, mylm1)
# ---------------------------------------------

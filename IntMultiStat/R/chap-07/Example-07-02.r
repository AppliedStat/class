# Example 7.2 on Page 363

y  = c(9,6,9, 0,2, 3,1,2)

z1 = c(1,1,1, 0,0, 0,0,0)
z2 = c(0,0,0, 1,1, 0,0,0)
z3 = c(0,0,0, 0,0, 1,1,1)

# Note: The design matrix Z is not of a full rank

Z = cbind(1,z1,z2,z3)
qr(Z)$rank

# Can we use the following? No.
LM = lm( y ~ z1 + z2 + z3  )
summary (LM)

#========================================
# Use the following:
#----------------------------------------
f1 = factor( c(1,1,1, 2,2, 3,3,3) )

aov( y ~ f1 ) 


# or 

LM = lm ( y ~ f1 )

summary(LM)

anova(LM)

aov(LM)



# 
# Example 7.8 on Page 390
# 
# Multivariate Multiple Regression Data
#  Y = matrix (two vectors)
# 
y1 = c( 1, 4, 3, 8, 9)
y2 = c(-1,-1, 2, 3, 2)

Y = cbind(y1,y2)

x1 = c(0,1,2,3,4)



##--------------------------------------
LMy1 = lm( y1 ~ x1)
LMy2 = lm( y2 ~ x1)

summary(LMy1)
summary(LMy2)

LMall = lm( Y ~ x1)   ## the above two models with one command 
summary( LMall )


## MANOVA 

anova(LMy1)
anova(LMy2)

summary.manova( manova(LMall), test="Pillai" )  ### Gives Pilai'Trace 
summary.manova( manova(LMall), test="Wilks" )   ### 
summary.manova( manova(LMall), test="Hotelling-Lawley")
summary.manova( manova(LMall), test="Roy")



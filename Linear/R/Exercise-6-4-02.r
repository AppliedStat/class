
u1 = c(-1, 2, 1)
u2 = c( 1, 1,-2)
y  = c(10, 5,20)

LM = lm ( y ~ 0 + u1 + u2 )

LM

fitted(LM)


####
beta.hat = c(95/35, -130/35)

yhat = c(-225/35, 60/35, 355/35)
####

coef(LM) - beta.hat

fitted(LM) - yhat 







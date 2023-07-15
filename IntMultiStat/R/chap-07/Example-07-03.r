
# Example 7.3 on Page 365 

x = 0:4
y = c(1,4,3,8,9)

LM = lm (y~x)

LM

e = resid(LM)

SSE = sum(e*e)

SSE 

anova(LM)  # also we can get SSE using this 






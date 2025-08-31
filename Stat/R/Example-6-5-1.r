## ==========================
## Example 6.5-1 on Page 290
## --------------------------

x = c( 70, 74, 72, 68, 58, 54, 82, 64, 80, 61 ) 
y = c( 77, 94, 88, 80, 71, 76, 88, 80, 90, 69 )

n = length(x)

xbar = mean(x)

ybar = mean(y)

alpha.hat = ybar

beta.hat = ( sum(x*y) - n*xbar*ybar) / ( sum(x*x) - n* xbar^2) 

alpha.hat
beta.hat 

### Using lm() function
### Note y = alpha + beta x unlike the textbook setting: y = alpha + beta(x-xbar).

LM = lm(y~x)

summary(LM)

plot(x,y )
abline(LM)



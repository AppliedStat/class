## ===================================
## Table IV on Appendix B on Page 511
## -----------------------------------


## p=fixed

qchisq( 0.010, df=1)
qchisq( 0.010, df=2)
qchisq( 0.010, df=30)

#

tmp = qchisq( 0.010, df=1:30)
round(tmp,3)

## df=fixed

qchisq( 0.010, df=1)
qchisq( 0.025, df=1)
qchisq( 0.050, df=1)

qchisq( c(0.01,0.025,0.05,0.1,0.9,0.95,0.975,0.99) , df=1)

tmp = qchisq( c(0.01,0.025,0.05,0.1,0.9,0.95,0.975,0.99) , df=2)
round(tmp,3)

# =============================================================
# None of p and df are fixed
# -------------------------------------------------------------
p = c(0.01, 0.025, 0.050, 0.10, 0.90, 0.95, 0.975, 0.99)
df = c(1:30,  40, 50, 60, 70, 80)
f <- function(x,y) qchisq(p=y, df=x)
values = outer(df, p, f)
round(values, 3)
# Cosmetic
colnames(values) = p
rownames(values) = df 
round(values, 3)


## ==========================
## Example 7.3.1 on Page 328
## --------------------------
a = 0.1; z0 = qnorm(1-a/2)

y=8; n=40
phat = y/n 

L = phat - z0 * sqrt( phat*(1-phat)/n )
U = phat + z0 * sqrt( phat*(1-phat)/n )

c(L, U)

#
# Wilson CI (See EQ. 7.3.4)
#

prop.test(y, n=n, conf.level=0.90, correct=FALSE )


#--------------------------------
y=80; n=400   ###  This is different. 
phat = y/n 

L = phat - z0 * sqrt( phat*(1-phat)/n )
U = phat + z0 * sqrt( phat*(1-phat)/n )

c(L, U)


#
# Wilson CI (See EQ. 7.3.4)
#

prop.test(y, n=n, conf.level=0.90, correct=FALSE )


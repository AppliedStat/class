## ==========================
## Example 2.6-3 on page 89 
## Figure 2.6-1 
## --------------------------

# 
r=1; p=0.25; x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r 
plot(y, f, type="h", xlim=c(0,25) )

r=4; p=0.6;  x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r 
plot(y, f, type="h", xlim=c(0,25) )

r=7; p=0.7;  x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r 
plot(y, f, type="h", xlim=c(0,25) )

r=15; p=0.7;  x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r 
plot(y, f, type="h", xlim=c(15,35) )

#---------------------------------------
# Plot the above four into one sheet. 
#---------------------------------------
par( mfrow=c(2,2)) 

# And then repeat the above four plots.
r=1; p=0.25; x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r
plot(y, f, type="h", xlim=c(0,25) )

r=4; p=0.6;  x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r
plot(y, f, type="h", xlim=c(0,25) )

r=7; p=0.7;  x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r
plot(y, f, type="h", xlim=c(0,25) )

r=15; p=0.7;  x = 0:25
f = dnbinom(x, size=r, prob=p)
y = x+r
plot(y, f, type="h", xlim=c(15,35) )



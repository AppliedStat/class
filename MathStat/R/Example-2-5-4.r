## ==========================
## Example 2.5-4 on page 85 
## --------------------------

# 
r=1; p=0.25; x = 0:25
f = dnbinom(x, size=r, prob=p)
plot(x+r, f, type="h", xlim=c(0,25) )

r=4; p=0.6;  x = 0:25
f = dnbinom(x, size=r, prob=p)
plot(x+r, f, type="h", xlim=c(0,25) )

r=7; p=0.7;  x = 0:25
f = dnbinom(x, size=r, prob=p)
plot(x+r, f, type="h", xlim=c(0,25) )

r=15; p=0.7;  x = 0:25
f = dnbinom(x, size=r, prob=p)
plot(x+r, f, type="h", xlim=c(15,35) )

#---------------------------------------
# Plot the above four into one sheet. 
#---------------------------------------
par( mfrow=c(2,2)) 

# And then repeat the above four plots.





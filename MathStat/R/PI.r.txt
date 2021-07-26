
## ==========================
## Example 1: Extra (Obtaining pi=3.14 using a circle)
## --------------------------
N = 50000 # sample size

x = runif(N, min=-1, max=1)
y = runif(N, min=-1, max=1)

Inside = ( x^2 + y^2 < 1 )
sum(Inside) / N * 4 


# Cosmetics
# plot(x, y, pch=".")
  plot( x[Inside], y[Inside],  
        pch=".", col="blue", xlim=c(-1,1), ylim=c(-1,1))
points( x[!Inside],y[!Inside], pch=".", col="red") 

angle = 2*pi* seq(0,1,length=101) 
r1 = cos(angle)
r2 = sin(angle) 
lines(r1, r2, col="green4")

#-----------------------------
# Convergence 
#-----------------------------
##NN = c(5, 10, 20, 30, 100, 500, 1000, seq(2000, 50000, by=1000) ) 
NN = seq(5, 5000, by=5) 
n  = length(NN)
PI = numeric(n) 

for ( i in 1:length(NN) ) { 
   x = runif(NN[i], min=-1, max=1)
   y = runif(NN[i], min=-1, max=1)
   Inside = ( x^2 + y^2 < 1 )
   PI[i] = sum(Inside) / NN[i] * 4
}

plot(NN, PI, type="l", col="blue" )
abline(h=3.14, col="red4")


## ==========================
## Example 2: Extra (Obtaining pi=3.14 using a ball)
## --------------------------
N = 50000 # sample size

x = runif(N, min=-1, max=1)
y = runif(N, min=-1, max=1)
z = runif(N, min=-1, max=1)

Inside = ( x^2 + y^2 + z^2 < 1 )
sum(Inside) / N * 6 

#-----------------------------
# Convergence 
#-----------------------------
##NN = c(5, 10, 20, 30, 100, 500, 1000, seq(2000, 50000, by=1000) ) 
NN = seq(5, 5000, by=5) 
n  = length(NN)
PI3 = numeric(n) 

for ( i in 1:length(NN) ) { 
   x = runif(NN[i], min=-1, max=1)
   y = runif(NN[i], min=-1, max=1)
   z = runif(NN[i], min=-1, max=1)
   Inside = ( x^2 + y^2 + z^2 < 1 )
   PI3[i] = sum(Inside) / NN[i] * 6
}

plot(NN, PI3, type="l", col="red" )
abline(h=3.14, col="red4")


#----------
 plot(NN, PI,  type="l", col="blue" )
lines(NN, PI3, type="l", col="red" )
abline(h=3.14, col="black")



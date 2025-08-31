## ==========================
## Example 6.4-6 on Page 280
## --------------------------

# Sample size = 4
L = function(theta, x) {
    dunif(x[1],0,theta)*dunif(x[2],0,theta)*dunif(x[3],0,theta)*dunif(x[4],0,theta)
}


# For example, we have 

x = c(1.9, 1.8, 1.7, 2.5)

TH = seq(0.1, 5, by=0.1)
plot(TH, L(TH,x), type="l")

# Lexical Scoping
L1 = function(theta) {
    dunif(x[1],0,theta)*dunif(x[2],0,theta)*dunif(x[3],0,theta)*dunif(x[4],0,theta)
}

x = c(1.9, 1.8, 1.7, 2.5)
TH = seq(0.1, 5, by=0.1)
plot(TH, L1(TH), type="l")


#------------------------------
# Sample size = n

L2 = function(theta, x) { 
   n = length(x)
   tmp = rep(1, length(theta))
   for ( i in 1:n ) { 
       tmp = tmp * dunif(x[i], 0, theta)
   }
   return(tmp)
}


# For example, we have 

x = c(1.9, 1.8, 1.7, 2.5, 3.2, 1.1, 1.2, 0.1, 0.9)

TH = seq(0.1, 5, by=0.1)

plot(TH, L2(TH,x), type="l")


  


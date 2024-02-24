# =================================
# Figures 1.16 on Page 25.
# =================================

x = c( 17,  31,  58,  66,  73,  73,  97, 108, 111, 117, 
      132, 132, 138, 140, 143, 143, 145, 147, 150, 157, 
      158, 161, 164, 168, 171, 177, 182, 185, 187, 196, 
      197, 202, 223, 242, 246, 249, 260, 269, 276, 287, 
      298, 308, 312, 314, 316, 338, 349, 354, 423, 529 )


n=length(x)
u = log( sort(x) )
v = log(-log(1-ppoints(n,a=.5)))


plot(u,v)  # Different from the textbook

plot(u,v, xlab="Time",ylab="Cumulative Percent")  
    # A little bit better, but still different from the textbook


#=================================================================================
plot(u,v, axes=FALSE, frame.plot=TRUE, xlab="Time",ylab="Cumulative Percent")
# X-axis
x.labels = c(1, 10, 100, 1000)
x.values = log(x.labels) 
axis(1,  at=x.values, labels=x.labels, cex.axis=0.8)

# Y-axis 
y.labels=c(0.1, 0.5, 1, 5, 10, 20, 30, 50, 70, 90, 99, 99.9)
y.values =log(-log(1-y.labels/100))
axis(2, las=2, at=y.values, labels=y.labels, cex.axis=0.8)

# Still the above is not satisfactory. 

#=================================================================================
plot(u,v, axes=FALSE, frame.plot=TRUE, xlim=range(x.values), ylim=range(y.values), 
      xlab="Time",ylab="Cumulative Percent", col="red")
axis(1,  at=x.values, labels=x.labels, cex.axis=0.8)

# Y-axis 
axis(2, las=2, at=y.values, labels=y.labels, cex.axis=0.8)

LM = lm( v ~ u)
abline(LM, col="blue")



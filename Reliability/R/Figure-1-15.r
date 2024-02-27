# =================================
# Figures 1.15 on Page 25.
# =================================

x = c( 17,  31,  58,  66,  73,  73,  97, 108, 111, 117, 
      132, 132, 138, 140, 143, 143, 145, 147, 150, 157, 
      158, 161, 164, 168, 171, 177, 182, 185, 187, 196, 
      197, 202, 223, 242, 246, 249, 260, 269, 276, 287, 
      298, 308, 312, 314, 316, 338, 349, 354, 423, 529 )
n = length(x)

hist(x, nclass=8, xlim=c(0,790) )   # Somewhat different from the textbook


#----------------------------------
breaks = seq(-10, 790, by=100)       
hist(x, breaks=breaks, xlim=c(-10, 790) )   # Closer to the textbook

# Add fitted curve 
xx = seq(0,790, by=10)
yy = dweibull(xx, shape=2.03, scale=223)
lines(xx,yy*n*100)

#----------------------------------
breaks = seq(-10, 790, by=100)
# Using Probability instead of frequency
hist(x, breaks=breaks, xlim=c(-10, 790), probability=TRUE) 

xx = seq(0,790, by=10)
yy = dweibull(xx, shape=2.03, scale=223)
lines(xx,yy)


#----------------------------------
# NOTE: the text book histogram is wrong 
# Let's count the values between 90 and 190
sum( x < 190 & x>90 )   # shows 23 > 20. 


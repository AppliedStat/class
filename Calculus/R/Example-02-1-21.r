
# Page 67

curve( x^2, from=-1/10, to=1/10, col="blue", ylim=c(-0.01,0.01))
curve(-x^2, from=-1/10, to=1/10, col="blue", add=TRUE)
curve( x^2 * sin(1/x), from=-1/10, to=1/10, col="red", n=1000, add=TRUE)




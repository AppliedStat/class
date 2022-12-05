
# Page 323 

curve( cos(x), from=-6, to=6, ylim=c(-3,3), col="red"  )
abline(h=0,v=0, col="gray")
curve( 1-x^2/2,  from=-6, to=6, col="blue", add=TRUE)
curve( 1-x^2/2+x^4/factorial(4),  from=-6, to=6, col="green", add=TRUE)
curve( 1-x^2/2+x^4/factorial(4)-x^6/factorial(6),  from=-6, to=6, col="brown", add=TRUE)
curve( 1-x^2/2+x^4/factorial(4)-x^6/factorial(6)+x^8/factorial(8),  from=-6, to=6, col="black", add=TRUE)



# Page 324 

curve( sin(x), from=-6, to=6, ylim=c(-3,3), col="red"  )
abline(h=0,v=0, col="gray")
curve( x-x^3/6,  from=-6, to=6, col="blue", add=TRUE)
curve( x-x^3/6+x^5/factorial(5),  from=-6, to=6, col="green", add=TRUE)
curve( x-x^3/6+x^5/factorial(5)-x^7/factorial(7),  from=-6, to=6, col="brown", add=TRUE)
curve( x-x^3/6+x^5/factorial(5)-x^7/factorial(7)+x^9/factorial(9),  from=-6, to=6, col="black", add=TRUE)




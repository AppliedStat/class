## ==========================
## Example 6.3-3 on Page 259
## --------------------------

## NOTE: http://integrals.wolfram.com/index.jsp

g1 = function(y) { 10 * y   * (1-y^2)^4 }
g2 = function(y) { 40 * y^3 * (1-y^2)^3 }
g3 = function(y) { 60 * y^5 * (1-y^2)^2 }
g4 = function(y) { 40 * y^7 * (1-y^2) }
g5 = function(y) { 10 * y^9 }


 curve(g1, 0,1)
 curve(g2, 0,1, add=TRUE)
 curve(g3, 0,1, add=TRUE)
 curve(g4, 0,1, add=TRUE)
 curve(g5, 0,1, add=TRUE)

# 
 curve(g1, 0,1, ylim=c(0,10) )
 curve(g2, 0,1, add=TRUE)
 curve(g3, 0,1, add=TRUE)
 curve(g4, 0,1, add=TRUE)
 curve(g5, 0,1, add=TRUE)

# 
 curve(g1, 0,1, ylim=c(0,10) )
 curve(g2, 0,1, add=TRUE, lty=2)
 curve(g3, 0,1, add=TRUE, lty=3)
 curve(g4, 0,1, add=TRUE, lty=4)
 curve(g5, 0,1, add=TRUE, lty=5)


##-------------------------------------------------------------

G1 = function(y) { 1 - (1-y^2)^5 }
G2 = function(y) { y^4 * ( -4*y^6 + 15*y^4 -20*y^2 + 10) }
G3 = function(y) { y^6 * (6*y^4 -15*y^2 +10) }
G4 = function(y) { y^8 * (5 - 4*y^2) }
G5 = function(y) y^10 

 curve(G1, 0,1)
 curve(G2, 0,1, add=TRUE, col="red")
 curve(G3, 0,1, add=TRUE, col="green")
 curve(G4, 0,1, add=TRUE, col="blue")
 curve(G5, 0,1, add=TRUE, col="grey")



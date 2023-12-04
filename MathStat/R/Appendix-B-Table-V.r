## ===================================
## Table V on Appendix B on Page 502
## -----------------------------------

# ====================================
# Table Va
# ------------------------------------
z = seq(0, 3.09, by=0.01)
P = pnorm(z)

P2 = matrix(P, ncol=10, byrow=TRUE)
P3 = round(P2, 5) 

# ------------------------------------
# Cosmetic
colnames(P3) = seq(0, 0.09, by=0.01)
rownames(P3) = seq(0, 3.0,  by=0.1)
# ------------------------------------

z = seq(3, 5.09, by=0.01)
P = pnorm(z)

P2 = matrix(P, ncol=10, byrow=TRUE)
P3 = round(P2, 5) 

# ------------------------------------
# Cosmetic
colnames(P3) = seq(0, 0.09, by=0.01)
rownames(P3) = seq(3, 5.0,  by=0.1)

P3


#===============================================================
alpha = c(0.4,0.3,0.2,0.1,0.05,0.025,0.02,0.01,0.005,0.001)
Z1 =  qnorm(1-alpha)
Z2 = qnorm(1-alpha/2)

Z = rbind(Z1, Z2)

# Cosmetic
colnames(Z) = alpha
round(Z,3)



# ====================================
# Table Vb
# ------------------------------------

z = seq(0, 3.49, by=0.01)
P = pnorm(z, lower.tail=FALSE)

P2 = matrix(P, ncol=10, byrow=TRUE)
P3 = round(P2, 4)

# ------------------------------------
# Cosmetic
colnames(P3) = seq(0, 0.09, by=0.01)
rownames(P3) = seq(0, 3.4,  by=0.1)

P3

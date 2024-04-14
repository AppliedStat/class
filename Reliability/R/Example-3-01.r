# =================================
# Example 3.1 on Page 187.
# =================================

Rsystem = function(t) {
      exp(-17E-6*t -(t/1.5E4)^2.2 - (t/2.5E4)^2.1)
}

Rsystem(1000)


#####################################
# Extra: MTTF using simulation 
#####################################

ITER = 100000
x = numeric(ITER) 
set.seed(1)
for ( i in seq_len(ITER) ) {
    x1 = rexp(1, rate=5E-6)
    x2 = rexp(1, rate=3E-6)
    x3 = rexp(1, rate=9E-6)
    x4 = rweibull(1, shape=2.2, scale=1.5E4)
    x5 = rweibull(1, shape=2.1, scale=2.5E4)
    x[i] = min(x1, x2, x3, x4, x5)
}

mean(x)

####################################
# Mathematica
####################################
https://www.wolframalpha.com/

integral from 0 to infinity exp(-17E-6*t -(t/1.5E4)^2.2 - (t/2.5E4)^2.1)

# approximately 10311.6 


####################################
# Maple
####################################

R := exp(-17E-6*t -(t/1.5E4)^2.2 - (t/2.5E4)^2.1)
int(R, t=0..infinity)

# approximately 10311.64135 


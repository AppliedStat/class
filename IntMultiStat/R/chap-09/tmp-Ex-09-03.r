# Example 9.3 on Page 491

Rho = matrix( c(1, .02, .96, .42, .01,  .02, 1, .13, .71, .85, .96, .13, 1, 
                .5, .11, .42, .71, .5, 1, .79, .01, .85, .11, .79, 1), nrow=5)

factanal( covmat=Rho, factors=2, scores="none" )

eigen(Rho)



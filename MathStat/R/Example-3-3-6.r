## ==========================
## Example 3.3-6 on Page 125
## --------------------------


# (a) P( 4 < X < 8 )
# After standardization
 pnorm(1.25) - pnorm(0.25)

# Withoug standardization 
 pnorm(8, mean=3, sd=4) - pnorm(4, mean=3, sd=4)


# (b) P( 0 < X < 5 )
# After standardization
 pnorm(0.5) - pnorm(-0.75)

# Withoug standardization 
 pnorm(5, mean=3, sd=4) - pnorm(0, mean=3, sd=4)


# (c) P( -2 < X < 1 )
# After standardization
 pnorm(-0.5) - pnorm(-1.25)

# Withoug standardization 
 pnorm(1, mean=3, sd=4) - pnorm(-2, mean=3, sd=4)




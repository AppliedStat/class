## ==========================
## Example 6.3-4 on Page 261
## --------------------------

data = c(1013, 1019, 1021, 1024, 1026, 1028,
         1033, 1035, 1039, 1040, 1043, 1047)

median(data)

quantile(data, probs=0.5)

quantile(data, probs=0.25)
quantile(data, probs=0.25, type=6) # type=6 is the textbook method

quantile(data, probs=0.75)
quantile(data, probs=0.75, type=6)

quantile(data, probs=0.60)
quantile(data, probs=0.60, type=6)


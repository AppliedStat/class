#======================================================
# Example 9.2.3 on Page 437
#   Test for Indenpendence 
#------------------------------------------------------
Male   = c(21, 16, 145,  2, 6)
Female = c(14,  4, 175, 13, 4)

Data = rbind(Male, Female)
Data

rownames(Data) = c("Male", "Female")
Data

# Turn off Yates's continuity correction for 2x2 table.
chisq.test(Data, correct=FALSE)   


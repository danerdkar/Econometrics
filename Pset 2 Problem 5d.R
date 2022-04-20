#Calling the statistics we need to compute confidence interval. 
mu.college
se.college

z.score <- qnorm(0.975)
z.score

C <- c(mu.college - z.score*se.college, mu.college + z.score*se.college)
C

# To conduct the hypothesis test, we compute the T-statistic using the following statistics.
mu.college
se.college

#Our null hypothesis is H_o: mu.college = 595 and our alternative hypothesis is H_a: mu.college is not equal to 595

T.stat2 <- (mu.college - 595)/se.college
T.stat2

p.value2 <- 2*pnorm(T.stat2)
p.value2
# To conduct the hypothesis test, we compute the T-statistic using the following statistics.
mu.college
se.college

#Our null hypothesis is H_o: mu.college = 600 and our alternative hypothesis is H_a: mu.college is not equal to 600

T.stat1 <- (mu.college - 600)/se.college
T.stat1

p.value1 <- 2*pnorm(T.stat1)
p.value1
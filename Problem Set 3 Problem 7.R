df <- read.csv("ak91.csv")
n <- nrow(df)
yrs_educ <- df$YRS_EDUC
wkly_wage <- df$WKLY_WAGE
n <- 329509

#Problem 7 Part A
my_simplecoef <- function(y, x) {
  beta_hat <- cov(y,x)/var(x)
  alpha_hat <- mean(y)-mean(x)*beta_hat
  coef <- c(alpha_hat, beta_hat)
  return(coef)
}

my_simplecoef(wkly_wage, yrs_educ) 

#Problem 7 Part B
coef <- my_simplecoef(wkly_wage, yrs_educ)

my_simpleblp <- function(coef, x) {
  blp <- coef[c(1)] + coef[c(2)] * x 
  return(blp)
}

mean(wkly_wage)-mean(my_simpleblp(coef,yrs_educ))

#Problem 7 Part C
my_simplese <- function(coef, y, x) {
  epsilon <- y - my_simpleblp(coef, x)
  se_numer <- sqrt(mean(epsilon^2 * (x-mean(x))^2))
  se <- (se_numer / var(x)) / sqrt(n)
  return(se)
}

se <- my_simplese(coef, wkly_wage, yrs_educ)
se

#Problem 7 Part D. I assume I will be testing against arbitrary population parameter beta. 

my_simpleteststat <- function(beta, se) {
  teststat <- (coef[c(2)]-beta)/se
  pstat <- 2*pnorm(-abs(teststat))
  return(c(teststat, pstat))
}

my_simpleteststat(31,se)
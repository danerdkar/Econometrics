df <- read.csv("ak91.csv")
n <- nrow(df)
yrs_educ <- df$YRS_EDUC
wkly_wage <- df$WKLY_WAGE
n <- 329509
  
#We compute the OLS estimates as follows
beta <- cov(wkly_wage, yrs_educ)/var(yrs_educ)
alpha <- mean(wkly_wage)-mean(yrs_educ)*beta

beta
alpha

#Part (c) We compute the estimator as follows.
x <- 16
BLP_16 <- alpha + beta*x

#Part (d) Computing standard error of beta hat.
BLP_yx <- alpha + yrs_educ*beta
epsilon <- wkly_wage - BLP_yx
se_numer <- sqrt(mean(epsilon^2 * (yrs_educ-mean(yrs_educ))^2))
se <- (se_numer / var(yrs_educ)) / sqrt(n)

#Part (e) Computing test statistic
t <- (beta - 31)/se

#Part (f) Computing p-value.
p_value <- 2*pnorm(-abs(t))

df <- read.csv("ak91.csv")
yrs_educ <- df$YRS_EDUC
wkly_wage <- df$WKLY_WAGE

sum <- 0
degree <- 0

for (x in 1:length(yrs_educ)){
  if (yrs_educ[x] == 16){
    sum <- sum + wkly_wage[x]
    sum2 <- sum + (wkly_wage[x])^2
    degree <- degree + 1
  }
}

mu.college <- sum/degree 
mu.college

se.college <- (sum2/degree + (mu.college)^2)^(1/2)
se.college
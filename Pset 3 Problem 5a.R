df <- read.csv("ak91.csv")
yrs_educ <- df$YRS_EDUC
wkly_wage <- df$WKLY_WAGE

has_college_degree <- yrs_educ == 16

degree <- 0 
for (val in has_college_degree) {
  if (val == "TRUE") degree = degree + 1
} #INDICATOR

n <- 329509
phat <- degree/n
phat




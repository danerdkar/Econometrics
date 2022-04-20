mu.college
length <- length(yrs_educ)

var <- 0 

for (x in 1:length(yrs_educ)) {
  if (yrs_educ[x] == 16){
    var <- var + (wkly_wage[y] - mu.college)^2
  }
}

#Based on 4(j)

n <- 329509
variance=var/degree
se.college=sqrt(variance/phat)/sqrt(n)
se.college
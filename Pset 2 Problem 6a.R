#We will construct a function conf.int

my_confint <- function(mu_hat, se, alpha) {
  critical.value <- qnorm(1-alpha/2)
  confint <- c(mu_hat-critical.value*se, mu_hat+critical.value*se)
    return(confint)
}
  
#Testing the function

my_confint(mu.college,se.college,0.05)
my_confint(mu.college,se.college,0.01)
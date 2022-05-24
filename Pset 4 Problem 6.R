dat <- read.csv("bw06.csv")
dat <- as.matrix(dat)
n <- 9800

# Select variables
y <- dat[,"birthweight"]
w <- dat[,"cigsdaily"]
x <- cbind (1, dat[,c("boy","age","highschool","somecollege","college")])
x_tld <- dat[,"married"]

#Part A
beta1 <- cov(y,w)/var(w)
alpha1 <- mean(y)-mean(x)*beta1
beta1
alpha1

#Part B. We apply Frisch-Waugh. 
XXt <- solve(t(x)%*%x)
XY <- t(x) %*% y
beta_xy <- XXt %*% XY
BLP_xy <- x %*% beta_xy
y_tilde <- y-BLP_xy

XW <- t(x) %*% w
beta_xw <- XXt %*% XW
BLP_xw <- x %*% beta_xw
w_tilde <- w-BLP_xw

#Plugging these into Frisch-Waugh yields the following. 
beta_w <- cov(w_tilde,y_tilde)/var(w_tilde)
beta_w

#Part F. We will be 




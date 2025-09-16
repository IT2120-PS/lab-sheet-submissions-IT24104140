setwd("C:\\Users\\ashen\\OneDrive\\Desktop\\IT24104140")

a <- 0
b <- 40 
p <- (25 - 10) / (b - a)
p

lambda <- 1/3
p_exp <- pexp(2, rate = lambda)
p_exp

mu <- 100
sigma <- 15
p_iq <- 1 - pnorm(130, mean = mu, sd = sigma)
p_iq

x_95 <- qnorm(0.95, mean = mu, sd = sigma)
x_95

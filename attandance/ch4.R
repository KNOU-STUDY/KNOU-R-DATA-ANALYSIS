library(datarium)
library(ggplot2)
y <- performance$t2
x <- performance$stress
oneway.test(y ~ x, var.equal = T)
library(datarium)
library(ggplot2)
for (stress in unique(performance$stress)) {
    m <- mean(performance$t2[performance$stress == stress])
    print(m)
}
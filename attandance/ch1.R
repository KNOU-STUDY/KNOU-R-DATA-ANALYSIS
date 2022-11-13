library(datarium)
library(ggplot2)
t(performance)
ggplot(data = performance, aes(x = t2, y = gender)) +
    geom_boxplot() +
    ggtitle("202135-367895")
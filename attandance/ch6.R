library(datarium)
library(ggplot2)
high <- c(0,0,0)
moderate <- c(0,0,0)
low <- c(0,0,0)
grp <- cut(performance$t2, c(0,5.5,5.8,Inf))
for(i in 1:length(performance$t2)){
    idx <- 0
    for(gr in unique(grp)){
        idx <- idx + 1
        if(gr==grp[i]){
            break
        }
    }
    if('high' == performance$stress[i]){
        high[idx] <- high[idx] + 1
    }else if('moderate' == performance$stress[i]){
        moderate[idx] <- moderate[idx] + 1
    }else{
        low[idx] <- low[idx] + 1
    }
}
high
moderate
low
chisq.test(matrix(c(high, moderate, low), ncol=3, byrow=T))
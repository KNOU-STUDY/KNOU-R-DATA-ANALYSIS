library(lattice)
xyplot(performance$t2 ~ performance$t1, main="202135-367895", panel=function(x,y){
    panel.xyplot(x,y)
    panel.lmline(x, y)
})
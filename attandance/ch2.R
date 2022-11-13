library(datarium)
library(ggplot2)
male <- performance$t2[performance$gender == 'male']
female <- performance$t2[performance$gender == 'female']
t.test(male, female, alternative = 'greater')
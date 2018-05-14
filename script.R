library(pwr)
library(dplyr)
eff_size <- cohen.ES(test = "t",size = "large")
eff_size
size <- pwr.t.test(d = eff_size$effect.size, sig.level = 0.05, power = 0.8,alternative = "greater")
size
plot(size)

data <- read.csv("H:/LYIT COMPUTER SECURITY/大数据/data sinces/统计作业/2018581110371305303DHA1140250467446.csv")
head(data)
data.frame(data)

sample <- sample_n(data, 21)
nrow(sample)
head(sample)

t.test(sample$Male,sample$Female)

# 3 набора

# С нормальным распределением a)
s1 <- rnorm(200, 25, 9)
#1
mean(s1)
median(s1)
getmode(s1)
var(s1)
sd(s1)

#2
hist(s1, freq = F)
lines(density(s1), lwd=2, col="green")
# C Breaks
hist(s1, breaks = 80, freq = F)
lines(density(s1), lwd=2, col="green")

# С распределением Пуассона б)
s2 <- rpois(200, 7)
#2
mean(s2)
median(s2)
getmode(s2)
var(s2)
sd(s2)

#3
hist(s2, freq = F)
lines(density(s2), lwd=2, col="red")
# C Breaks
hist(s2, breaks = 80, freq = F)
lines(density(s2), lwd=2, col="red")

# С биномиально распределением в)
s3 <- rbinom(200, 40, 0.6)
#2
mean(s3)
median(s3)
getmode(s3)
var(s3)
sd(s3)

#3
hist(s3, freq = F)
lines(density(s3), lwd=2, col="blue")
# C Breaks
hist(s3, breaks = 80, freq = F)
lines(density(s3), lwd=2, col="blue")

# Функция для вычисления режима mode
getmode <- function(x){
  uniqx <- unique(x)
  uniqx[which.max(tabulate(match(x, uniqx)))]
}

rm(list = ls()) 
cat("\014") 

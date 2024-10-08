set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2

is.na(hw2)
!is.na(hw2)

#Question 1----

##this one will identify the NA values----
hw2[!is.na(hw2)]

##this one will remove the NA values----
hw2[!is.na(hw2)]
prob1 <- hw2[!is.na(hw2)] [hw2[!is.na(hw2)] >= 14 & hw2[!is.na(hw2)] <= 38]
prob1

#Question 2-----
times3 <- prob1*3
plus10 <- times3 + 10
plus10

#Question 3----
final <- plus10[c(TRUE, FALSE)]
final

2 * 5 
4+(8 * 3)^2
# this is a comment
#scientific notation
2 / 1000000
4e3
#mathematical functions
exp(1)

exp(3)

log(4)


sqrt(4)

#r help files
?log
log(2, 4)
log(4, 2)

log(x = 2, base = 4)

x <- 1 
x
rm(x)

#nested functions
sqrt(exp(4))

#six comparison functions
#two equal signs!!
mynumber <- 6
mynumber == 5

#tab to finish name function
mynumber
mynumber != 5

mynumber > 4

mynumber < 3

mynumber <= -1


#objects and assignment
othernumber <- -3
mynumber * othernumber

#object name conventions
numSamples <- 50
num_samples <- 40
rm(num_samples)
rm(list = ls())

#errors and warnings 
log_of_word <- log("a_word")
log_of_word

log_of_negative <- log(-2)
log_of_negative
#warning will only appear once, so make sure to catch it the first time you produce the warning signal

#challenge
elephant1_kg <- 3492
elephant2_lb <- 7757

elephant1_lb <- elephant1_kg * 2.2

elephant2_lb > elephant1_lb

myelephants <- c(elephant1_lb, elephant2_lb)

which(myelephants == max(myelephants))

rm(elephant2_lg)
rm(elephant2_kg)



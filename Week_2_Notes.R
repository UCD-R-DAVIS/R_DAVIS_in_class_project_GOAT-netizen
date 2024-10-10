# Homework Review----
hw2[!is.na(hw2)]
!is.na(hw2)
hw2[complete.cases(hw2)]

# Class Notes----
## Other data types----
### Lists----
c(4, 6, "dog")
a <- list(4, 6, "dog")
class(a)
str(a)


## Data.frames----
letters
data.frame(letters)
df <- data.frame(letters)
as.data.frame(t(df))
length(df)
dim(df) #rows, columns
nrow(df)
ncol(df)

# Factors----
animals <- factor(c("duck", "duck", "goose","goose")) #alphabetize the factors
animals

animals2 <- factor(c("pigs", "duck", "duck", "goose","goose"))
animals2

class(animals)
levels(animals)
animals2
nlevels(animals2)


animals2 <- factor(x = animals2, levels = c("goose", "pigs", "duck"))
animals2 #this changes the order of levels and has in fact changed 


year <- factor(c(1978, 1980, 1934, 1979))
year
as.numeric(year) #creates to numeric 

year
as.numeric(animals)
as.character(animals)

# Class Activity----
getwd()

surveys <- read.csv("data/portal_data_joined.csv")
nrow(surveys)
ncol(surveys)
dim(surveys)

str(surveys)
summary(surveys)

head(surveys)
tail(surveys)
head(surveys, n = 3)

dim(surveys)
#first 5 rows
surveys[1,5,]
surveys[c(1,5,24, 3001),]
dim(surveys[c('record_id', 'year', 'day')])

head(surveys)
head(surveys, n = 15)

tail(surveys)
surveys[1:6,]


head(surveys["genus"])
head(surveys[["genus"]]) #double bracket gets you into the internal object of the bigger thing

str(surveys)

head(surveys[,'genus',])
surveys$genus

surveys$hindfoot_length
class(surveys$hindfoot_length)

surveys$plot_id
class(surveys$hindfoot_length)



install.packages("tidyverse")
library(tidyverse)

t_surveys <- read_csv('data/portal_data_joined.csv')
class(t_surveys)
t_surveys


surveys[,1]
t_surveys[,1]
